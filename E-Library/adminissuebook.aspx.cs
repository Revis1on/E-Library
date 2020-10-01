using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;


namespace E_Library
{
    public partial class adminissuebook : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].ToString() == "User" || Session["username"].ToString() == null)
                {

                    Response.Write("<script>alert('Немате пристап до оваај ресурс');</script>");
                    Response.Redirect("homepage.aspx");
                }

             

            }
            catch (Exception ex)
            {

            }
        }
        // go btn
        protected void Button1_Click(object sender, EventArgs e)
        {
            getOrderDetal();
        }

        //lent btn
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfBookExist() && checkIfMemberExist())
            {

                if (checkIfIssueEntryExist())
                {
                    Response.Write("<script>alert('Овај корисник ја има оваа книга');</script>");
                }
                else
                {
                    issueBook();
                    notifuUser();
                }

            }
            else
            {
                Response.Write("<script>alert('Погрешна Книга ID или Корисник ID');</script>");
            }
        }


        //user defiend methods


        void getOrderDetal()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from book_order_tbl where order_id='" + TextBox11.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(0).ToString();
                        TextBox1.Text = dr.GetValue(1).ToString();
                        TextBox4.Text = dr.GetValue(2).ToString();
                        TextBox3.Text = dr.GetValue(3).ToString();


                    }

                }
                else
                {
                    Response.Write("<script>alert('Невалидни податоци');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");


            }

        }

            void issueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO book_issue_tbl(member_id,member_name,book_id,book_name,issue_date,due_date) values(@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)", con);

                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("update  book_master_tbl set current_stock = current_stock-1 WHERE book_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Книгата е издадена');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from book_master_tbl WHERE book_id='" + TextBox1.Text.Trim() + "' AND current_stock >0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool checkIfIssueEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from book_issue_tbl WHERE member_id='" + TextBox2.Text.Trim() + "' AND book_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }



        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select book_name from book_master_tbl WHERE book_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Погрешна Книга ID');</script>");
                }

                cmd = new SqlCommand("select full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Погрешен корисник ID');</script>");
                }


            }
            catch (Exception ex)
            {

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





        void notifuUser()
        {



            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select email from member_master_tbl where member_id='" + TextBox2.Text.Trim() + "' ", con); ;
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    string email = dr["email"].ToString();
                    string name = TextBox3.Text;
                    string bookname = TextBox4.Text;
                    string startdate = TextBox5.Text;
                    string duedate = TextBox6.Text;

                    MailMessage mn = new MailMessage("elibrarytestmail@gmail.com", email);
                    mn.Subject = "Издадена Книга";
                    mn.Body = string.Format("Здраво: " + name + "  <br> Сакаме да ве известиме дека барањето за изнајмување на книгата " + bookname + " е одборено <br> " +
                   "Книгата е издадена во период од  "+startdate+" до "+duedate+" <br> Книгата ќе ви биде испорачана за 2-3 бизнис денови <br> " +
                   "Можите да се логирате <a href=https://e-library-test-mk.azurewebsites.net/userlogin.aspx >овде</a>");

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
                   



                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



    }
}