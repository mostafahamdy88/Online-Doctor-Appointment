using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace DocOnline
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        string SessionName;
        protected void Page_Load(object sender, EventArgs e)
        {
            c =new ConnectionDAO();
            con = c.GetConnection();
            if (Session["PassRecov"] != null)
            {
                if (Session["PassRecov"].ToString() == "Doctor")
                {
                    Label1.Text = "Doctor";
                    Label6.Text = "Phone No: ";
                    SessionName = "Doctor";
                }
                if (Session["PassRecov"].ToString() == "Patient")
                {
                    Label1.Text = "Patient";
                    Label6.Text = "Email: ";
                    SessionName = "Patient";
                }

            }
            else
            {
                Label1.Text = " ";
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            if (SessionName == "Doctor")
            {
                
                SqlCommand cmd = new SqlCommand("Select * from Doctor where DocPhone='" + TextBox1.Text.Trim() + "';", con);
                SqlDataReader sdr;
                con.Open();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    Label2.Text = sdr.GetString(6);
                    Label3.Text = sdr.GetString(7);
                    Label4.Text = "Username: ";
                    Label5.Text = "Password: ";

                }
                con.Close();
            }
            
            if (SessionName == "Patient")
            {
                SqlCommand cmd = new SqlCommand("Select * from Patient where Patient_Email='" + TextBox1.Text.Trim() + "';", con);
                SqlDataReader sdr;
                con.Open();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    Label2.Text = sdr.GetString(7);
                    Label3.Text = sdr.GetString(8);
                    Label4.Text = "Username: ";
                    Label5.Text = "Password: ";
                }
                con.Close();
            }
            /*else
            {
                Label2.Text = "Invalid Email Id";
            }*/
                
            }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if(SessionName == "Patient")
            {
                Response.Redirect("~/PatientLogin.aspx");
            }
            else
            {
                Response.Redirect("~/DoctorLogin.aspx");
            }
           
        }
        }
    }
