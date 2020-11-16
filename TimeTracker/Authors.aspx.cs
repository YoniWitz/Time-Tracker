using System;
using System.Configuration;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

namespace TimeTracker
{
    public partial class Authors : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myDatabaseConnectionString"].ConnectionString);
            SqlCommand comm = new SqlCommand();

            comm.CommandText = "InsertNewAuthor";
            comm.CommandType = CommandType.StoredProcedure;
            comm.Connection = conn;

            SqlParameter firstNameParam = new SqlParameter("firstName", FirstName.Text);
            SqlParameter lastNameParam = new SqlParameter("lastName", LastName.Text);

            comm.Parameters.Add(firstNameParam);
            comm.Parameters.Add(lastNameParam);

            SqlParameter returnParam = new SqlParameter();
            returnParam.ParameterName = "returnValue";
            returnParam.Direction = ParameterDirection.ReturnValue;
            comm.Parameters.Add(returnParam);

            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();

            if (comm.Parameters["returnValue"].Value.ToString() == "0")
                Label1.Text = "There was an error in the stored procedure";
            else
                Label1.Text = "";

            GridView1.DataBind();

        }
    }
}