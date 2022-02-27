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
    public partial class PatientAppShow : System.Web.UI.Page
    {
        ConnectionDAO c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new ConnectionDAO();
            con = c.GetConnection();
            SqlCommand cmd = new SqlCommand("SELECT Appointment.AppId, Doctor.DocName, DocAdd.Speciality, Appointment.AppDate, Appointment.Prec, Appointment.Note, Timeslot.Timeslot FROM Appointment INNER JOIN Timeslot ON Appointment.AppTime = Timeslot.TId INNER JOIN Doctor ON Appointment.did = Doctor.DocId AND Appointment.did = Doctor.DocId INNER JOIN DocAdd ON Doctor.DocType = DocAdd.SId WHERE Appointment.pid='" + (Session["id"].ToString()) + "'ORDER BY AppDate DESC", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            DataTable dtb = new DataTable();
            dtb.Load(sdr);
            GridView1.DataSource = dtb;
            GridView1.DataBind();
            con.Close();
        }
    }
}