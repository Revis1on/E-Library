<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="adminbooks.aspx.cs" Inherits="E_Library.aminbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <%--Datatables js--%>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

        <%--DataTables css--%>
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"/>
    


       <script type="text/javascript">
           $(document).ready(function () {
               $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           });

           $(document).ready(function () {
               $('table.display').DataTable();
           });
       </script>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Издавање на книги</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="Images/imgs/books.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Корисник ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Корисник ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Книга ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Книга ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Оди" OnClick="Button1_Click" />
                           </div>
                        </div>
                     </div>
                         <div class="col-md-5">
                        <label>Нарачка</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Корисник ID"></asp:TextBox>
                            <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Оди"/>
                            <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                             </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Име на Корисникот</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Име на корисникот" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Име на Книга</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Име на Книгата" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col-md-6">
                        <label>Број за контакт</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Број за контакт" ReadOnly= "true" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Емаил</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Емаил" ReadOnly="true" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col">
                        <label>Адреса на живеење</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Целосна адреса на живеење" TextMode="MultiLine" Rows="2" ReadOnly ="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Почетен Датум</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Почетен датум" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Краен Датум</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Краен датум" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-6">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Издади" OnClick="Button2_Click" />
                     </div>
                     <div class="col-6">
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="Врати" OnClick="Button4_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Назад</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Листа на издадени книги</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT [member_id], [member_name], [book_id], [book_name], [issue_date], [due_date] FROM [book_issue_tbl]"></asp:SqlDataSource>
                        <asp:GridView class="table table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="Корисник ИД" SortExpression="member_id" />
                                <asp:BoundField DataField="member_name" HeaderText="Име на Корисникот" SortExpression="member_name" />
                                <asp:BoundField DataField="book_id" HeaderText="Книга ИД" SortExpression="book_id" />
                                <asp:BoundField DataField="book_name" HeaderText="Име на Книга" SortExpression="book_name" />
                                <asp:BoundField DataField="issue_date" HeaderText="Дата на Издавање" SortExpression="issue_date" />
                                <asp:BoundField DataField="due_date" HeaderText="Дата на Враќање" SortExpression="due_date" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>         
               </div>        
            </div>
         </div>
           <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Листа на издадени книги</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT [username_id], [book_id], [book_name], [full_name], [full_address], [num_contact], [order_id], [email] FROM [book_order_tbl]"></asp:SqlDataSource>
                         <asp:GridView class="table table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource2">
                             <Columns>
                                 <asp:BoundField DataField="username_id" HeaderText="username_id" SortExpression="username_id" />
                                 <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                                 <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                 <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                 <asp:BoundField DataField="full_address" HeaderText="full_address" SortExpression="full_address" />
                                 <asp:BoundField DataField="num_contact" HeaderText="num_contact" SortExpression="num_contact" />
                                 <asp:BoundField DataField="order_id" HeaderText="order_id" ReadOnly="True" SortExpression="order_id" />
                                 <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                             </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>        
            </div>
         </div>
      </div>
   </div>


</asp:Content>
