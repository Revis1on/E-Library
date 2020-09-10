<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="lentbook.aspx.cs" Inherits="E_Library.lentbook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

          <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        
                         <asp:Image class="img-fluid float-right " Height="230px" Width="150px" ID="Image1" ImageUrl="Images/books/LentBook.png" runat="server" />

                        <div class="row">
                     <div class="col-md-2">
                       <label>Книга ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Книга ID" ReadOnly="true"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Име на Книга</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Име"  ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                         <div class="row">
                     <div class="col-md-5">
                        <label>Автор</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Име на Автор" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Јазик</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Јазик" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                          <div class="row">
                     <div class="col-md-5">
                        <label>Издавач</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox11" runat="server" placeholder="Име" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Состојба</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox13" runat="server" placeholder="Состојба" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                              <div class="col-md-3">
                        <label>Цена</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Состојба" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                     </div>
                  </div>
                  <div class="row">
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <div class="col-md-4">
                        <label>Кориснички ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox12" runat="server" placeholder="Кориснички ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Име и Презиме</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Име и Презиме" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                        <div class="col-md-4">
                        <label>Број на порачка</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox14" runat="server" placeholder="Број" TextMode="Number" ReadOnly ="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>        
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Зачувај" OnClick="Button1_Click"  />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Назад</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="Images/icons/book-lent.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Твоите издадени книги</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="информации за твоите книги"></asp:Label>
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
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="Корисник ИД" SortExpression="member_id" />
                                <asp:BoundField DataField="member_name" HeaderText="Име на Корисник" SortExpression="member_name" />
                                <asp:BoundField DataField="book_id" HeaderText="Книга ИД" SortExpression="book_id" />
                                <asp:BoundField DataField="book_name" HeaderText="Име Книга" SortExpression="book_name" />
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
