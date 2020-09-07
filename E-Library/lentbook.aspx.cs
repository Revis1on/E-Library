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
    public partial class lentbook : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Вашата Сесија е Истечена ! Ве молиме најавете се пак');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    getUserBookData();
                    autoGenId();
                    getBookByID();

                    if (!Page.IsPostBack)
                    {
                        getUserPersonalDetails();
                        autoGenId();
                        getBookByID();
                    }

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Вашата Сесија е Истечена ! Ве молиме најавете се пак');</script>");
                Response.Redirect("userlogin.aspx");
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            getBookByID();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addOrder();
        }

        //user defiend methods



        void autoGenId()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Select max(order_id) from book_order_tbl",con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();

                int bokid = Convert.ToInt32(dr[0]);



                bokid++;

                TextBox14.Text =  bokid.ToString();


            }
            catch(Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void addOrder()
        {

            
            

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO book_order_tbl(username_id,book_id,book_name,full_name,order_id) values(@username_id,@book_id,@book_name,@full_name,@order_id)", con);

                cmd.Parameters.AddWithValue("@username_id", Session["username"]);
                cmd.Parameters.AddWithValue("@book_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@order_id", TextBox14.Text.Trim());




                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Вашаето барање е евидентирано !');</script>");



            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["full_name"].ToString();
                TextBox12.Text = dt.Rows[0]["member_id"].ToString();

              


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void getBookByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from book_master_tbl WHERE book_id='" + Session["id"].ToString() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox8.Text = dr.GetValue(0).ToString();
                        TextBox9.Text = dr.GetValue(1).ToString();
                        TextBox2.Text = dr.GetValue(3).ToString();
                        TextBox10.Text = dr.GetValue(6).ToString();
                        Image1.ImageUrl = dr.GetValue(13).ToString();
                        TextBox13.Text = dr.GetValue(12).ToString();
                        TextBox11.Text = dr.GetValue(4).ToString();
                        TextBox3.Text = dr.GetValue(8).ToString();

                    }
                }
            }




            catch (Exception ex)
            {


            }
        }

        void getUserBookData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from book_issue_tbl where member_id='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //Check your condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }
}