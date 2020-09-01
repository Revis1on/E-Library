<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="adminreturnbooks.aspx.cs" Inherits="E_Library.aminbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <%--Datatables js--%>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

        <%--DataTables css--%>
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"/>
    


       <script type="text/javascript">
           $(document).ready(function () {
               $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          

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
                           <h4>Враќање на книги</h4>
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
                     <div class="col-md-6">
                        <label>Корисник ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Корисник ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Книга ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Книга ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Оди" OnClick="Button1_Click" />
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
                  </div>
                  <div class="row">
                     <div class="col-6">
                         <center>
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="Врати" OnClick="Button4_Click" />
                             </center>
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
      </div>
   </div>


</asp:Content>
