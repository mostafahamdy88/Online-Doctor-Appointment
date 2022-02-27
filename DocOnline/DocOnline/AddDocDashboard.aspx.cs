using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace DocOnline
{
    public partial class AddDocDashboard : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        int speciality_id;
        int admin_id;
        //string imagepath;
        public void Display()
        {
            
            SqlCommand cmd = new SqlCommand("select * from Doctor,DocAdd where DocType=SId",con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            DataTable dtb = new DataTable();
            dtb.Load(sdr);
            gridvDoc.DataSource = dtb;
            gridvDoc.DataBind();
            con.Close();

        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new ConnectionDAO();
            con = c.GetConnection();
            if (!IsPostBack)
            {
                
                SqlCommand cmd = new SqlCommand("Select MAX(DocId) from Doctor", con);
                con.Open();
                LabeleId.Text = ((int)cmd.ExecuteScalar() + 1).ToString();
                con.Close();
                Display();

                SqlCommand cmd1 = new SqlCommand("Select Speciality from DocAdd", con);
                con.Open();
                SqlDataReader sdr = cmd1.ExecuteReader();
                DataTable dtb = new DataTable();
                dtb.Load(sdr);
                DDLDoctorType.DataSource = dtb;
                DDLDoctorType.DataTextField = "Speciality";
                DDLDoctorType.DataValueField = "Speciality";
                DDLDoctorType.DataBind();
                con.Close();
                
            }
            
        }

        protected void DDLDoctorType_SelectedIndexChanged(object sender, EventArgs e)
        {
           /* SqlCommand cmd = new SqlCommand("select SId from DocAdd where Speciality='" + DDLDoctorType.Text + "'", con);
            con.Open();
            id = Convert.ToInt32(cmd.ExecuteReader());
            MessageLabel.Text = "id= "+id;
            con.Close();
        */
           
        }
     /* protected void BtnShow_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Images/DocImgs/"+FileUpload1.FileName));
            ImageButton3.ImageUrl ="~/Images/DocImgs/"+FileUpload1.FileName;
           imagepath = "~/Images/DocImgs/" + FileUpload1.FileName; 
        }*/

      protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
      {
          String Gender;
          if (RdButtonMale.Checked)
          {
               Gender = "Male";
          }
          else
          {
              Gender = "Female";
          }
   
          
          SqlCommand cmd2 = new SqlCommand("select SId from DocAdd where Speciality='" + DDLDoctorType.Text + "'", con);
          con.Open();
          SqlDataReader dr2;
          dr2 = cmd2.ExecuteReader();
          while (dr2.Read())
          {
              speciality_id = Convert.ToInt32("" + dr2[0]);
          }
          con.Close();
          
          con.Open();
          string adminname = (string)Session["Admin_Name"];
          SqlCommand sc = new SqlCommand("select AdminId from Admin where username ='" + adminname + "'", con);
          SqlDataReader sdr2;
          sdr2 = sc.ExecuteReader();
          while (sdr2.Read())
          {
              admin_id = Convert.ToInt32("" + sdr2[0]);
          }
          con.Close();

          con.Open();
          SqlCommand cmd = new SqlCommand("insert into Doctor values('" + txtDoctorName.Text + "','" + speciality_id + "','" + Gender + "','" + txtDoctorNo.Text + "','" + txtDocAge.Text + "','" + txtDocUsername.Text + "','" + txtDocPassword.Text + "','" + admin_id + "')", con);
          cmd.ExecuteNonQuery();
          MessageLabel.Text = "Succesfully Doctor Added..!";
          
          SqlCommand cmd1 = new SqlCommand("Select MAX(DocId) from Doctor", con);
          LabeleId.Text = ((int)cmd1.ExecuteScalar() + 1).ToString();
          con.Close();
          Display();
      }

      protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
      {
          SqlCommand cmd = new SqlCommand("delete from Doctor where DocName=@Name and DocPhone=@Mobile", con);

          cmd.Parameters.AddWithValue("@Name", txtDoctorName.Text.Trim());
          cmd.Parameters.AddWithValue("@Mobile", txtDoctorNo.Text.Trim());
          con.Open();
          cmd.ExecuteNonQuery();
          MessageLabel.Text = "Succesfully Doctor Deleted..!";
          con.Close();
          Display();
      }
    //  protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
      //{

      //}
    }
}