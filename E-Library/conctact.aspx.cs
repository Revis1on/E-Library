using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace E_Library
{
    public partial class conctact : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            signUpNewMember();

        }


        void signUpNewMember()
        {



            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO contact_table(full_name,email,message,tel_num) values(@full_name,@email,@message,@tel_num)", con);
                cmd.Parameters.AddWithValue("@full_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@tel_num", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@message", TextBox5.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Вашата Порака е евидентирана');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

 
    }
}