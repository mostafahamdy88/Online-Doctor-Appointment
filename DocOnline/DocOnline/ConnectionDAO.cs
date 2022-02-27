using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace DocOnline
{
    public class ConnectionDAO
    {
        public SqlConnection con;
        public SqlConnection GetConnection()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
            //connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);

            return con;
        }
        public void CloseConnection()
        {
            con.Close();
        }
    }
}