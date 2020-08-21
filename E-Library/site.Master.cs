using System;

namespace E_Library
{
    public partial class site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        //Кнги//
        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }
        //Одјава//
        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }
        //Добредојде//
        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }
    }
}