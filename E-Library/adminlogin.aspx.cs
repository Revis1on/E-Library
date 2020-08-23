using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace E_Library
{
    public partial class adminlogin : System.Web.UI.Page
    {
        // konekcija za baza na podatoci
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed) 
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * admin_tbl where member_id='" + TextBox1.Text.Trim() + "' AND password = '" + TextBox2.Text.Trim() + "'", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>'" + dr.GetValue(8).ToString() + "'</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Невалиден Корисник');</script>");
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}