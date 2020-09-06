using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library
{
    public partial class viewbooks : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("lentbook.aspx");
         
        }

        protected void Button_Click1(object sender, EventArgs e)
        {
            Response.Redirect("lentbook.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }




        //user defiend methods


      protected void modalItems(object source, DataGridCommandEventArgs e)
        {


           

            try
            {

                if (e.CommandName == "viewPopup")
                {

                    SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }



                HiddenField Id = (HiddenField)e.Item.FindControl("hidID");
                SqlCommand cmd = new SqlCommand("SELECT * from book_master_tbl WHERE book_id='" + Id.Value + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)

                {
                    Label14.Text = dt.Rows[0]["book_name"].ToString();
                    Label12.Text = dt.Rows[0]["author_name"].ToString();
                    Label3.Text = dt.Rows[0]["genre"].ToString();
                    Label4.Text = dt.Rows[0]["language"].ToString();
                    Label5.Text = dt.Rows[0]["publisher_name"].ToString();
                    Label6.Text = dt.Rows[0]["publish_date"].ToString();
                    Label7.Text = dt.Rows[0]["no_of_pages"].ToString();
                    Label8.Text = dt.Rows[0]["edition"].ToString();
                    Label9.Text = dt.Rows[0]["book_cost"].ToString();
                    Label10.Text = dt.Rows[0]["actual_stock"].ToString();
                    Label11.Text = dt.Rows[0]["current_stock"].ToString();
                    Label12.Text = dt.Rows[0]["book_description"].ToString();
                    Image1.ImageUrl = dt.Rows[0]["book_img_link"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Невалиден Книга ID');</script>");
                }
            }

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
         }

            catch (Exception ex)
            {

            }
            

       }


    }


}