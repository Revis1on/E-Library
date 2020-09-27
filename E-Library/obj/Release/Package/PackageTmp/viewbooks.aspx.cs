using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Dynamic;
using System.IO;
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
            else if (e.CommandName == "Redirect")
            {
                Response.Redirect(e.CommandArgument.ToString());
            }
            
        }




        //user defiend methods

    

        protected void Display(object sender, EventArgs e)
        {
            int rowIndex = Convert.ToInt32(((sender as LinkButton).NamingContainer as GridViewRow).RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];

            BookNameL.Text = (row.FindControl("BookNameL") as Label).Text;
            AvtorIDL.Text = (row.FindControl("AvtorIDL") as Label).Text;
            GenreL.Text = (row.FindControl("GenreL") as Label).Text;
            PubNL.Text = (row.FindControl("PubNL") as HiddenField).Value;
            NopL.Text = (row.FindControl("NopL") as HiddenField).Value;
            bks.Text = (row.FindControl("bks") as HiddenField).Value;
            Image2.ImageUrl = (row.FindControl("img") as HiddenField).Value;

            ClientScript.RegisterStartupScript(this.GetType(), "Pop", "openModal();", true);
        }

   

    }
}