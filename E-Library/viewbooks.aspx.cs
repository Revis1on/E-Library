using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Dynamic;
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


        protected void Button_Click1(object sender, EventArgs e)
        {   
            Response.Redirect("lentbook.aspx");

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Order")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = GridView1.Rows[rowIndex];

                string id = row.Cells[0].Text;

                Session["id"] = id;
                Response.Redirect("lentbook.aspx");
            }
            else if (e.CommandName == "Detail")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = GridView1.Rows[rowIndex];

                string id = row.Cells[0].Text;

                Session["detals"] = id;

            }

        }




        //user defiend methods

        void getBookDetals()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from book_master_tbl WHERE book_id='" + Session["detals"].ToString() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                Label13.Text= dt.Rows[0]["book_name"].ToString();
            }




            catch (Exception ex)
            {


            }
        }


    }
}