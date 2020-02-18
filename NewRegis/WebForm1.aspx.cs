using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewRegis
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}
        private void ValidateForm()
        {
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                Label2.Text = "Please enter first name";
            }
         
            if (string.IsNullOrEmpty(TextBox2.Text))
            {
                Label3.Text = "Please enter last name";
            }
           
            if (string.IsNullOrEmpty(TextBox3.Text))
            {
                Label4.Text = "Please enter email";
            }
           
            if (string.IsNullOrEmpty(TextBox4.Text))
            {
                Label5.Text = "Please enter phone number";
            }     
       }
        protected void Submit_Click(object sender, EventArgs e)
        {
            ValidateForm();
            //    string queryString = "insert into [dbo].[sqlinject](firstname, lastname) values(@FirstName,@LastName);";
            //    using (SqlConnection connection = new SqlConnection(@"Data Source=.;Initial Catalog=Registeration;Integrated Security=True"))
            //    {
            //        SqlCommand command = new SqlCommand(queryString, connection);
            //        connection.Open();
            //        //SqlDataReader reader = command.ExecuteReader();
            //        command.Parameters.AddWithValue("FirstName", TextBox1.Text.ToString());
            //        command.Parameters.AddWithValue("LastName", TextBox2.Text.ToString());
            //        try
            //        {
            //            command.ExecuteNonQuery();
            //        }
            //        finally
            //        {
            //            connection.Close();
            //        }
            //    }
            //}
        }
    }
}