using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library
{
    public partial class forgothpassword : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            returnPassword();
        }


        void returnPassword()
        {



            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select member_id,password from member_master_tbl where email='" + TextBox2.Text.Trim() + "' ", con); ;
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    string username = dr["member_id"].ToString();
                    string password = dr["password"].ToString();


                    MailMessage mn = new MailMessage("elibrarytestmail@gmail.com", TextBox2.Text);
                    mn.Subject = "Вашата Лозинка";
                    mn.Body = string.Format("Здраво <br> Вашето корисничко име е : <h3>" + username + "</h3>   <br> Твојата лозинка е <h3>" + password+ "</h3> <br> Можите да се логирате <a href=https://e-library-test-mk.azurewebsites.net/userlogin.aspx >овде</a>");

                    mn.IsBodyHtml = true;
                    SmtpClient sm = new SmtpClient();
                    sm.Host = "smtp.gmail.com";
                    sm.EnableSsl = true;
                    NetworkCredential nc = new NetworkCredential();
                    nc.UserName = "elibrarytestmail@gmail.com";
                    nc.Password = "mekaStolica1";
                    sm.UseDefaultCredentials = false;
                    sm.Credentials = nc;
                    sm.Port = 587;
                    sm.Send(mn);
                    Label1.Text = "Вашите информации се испратени на " + TextBox2.Text;
                    Label1.ForeColor = Color.Green;
                    


                }
                else
                {
                    Label1.Text = TextBox2.Text + " - Оваа Е-пошта не постои во нашата датабаза ";
                    Label1.ForeColor = Color.Red;
                }

                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    
    }
}