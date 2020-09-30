<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="adminbookInventory.aspx.cs" Inherits="E_Library.adminbookInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <%--Datatables js--%>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

        <%--DataTables css--%>
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"/>



    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
 
       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();
 
               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };
 
               reader.readAsDataURL(input.files[0]);
           }
       }
 
    </script>
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
                        <center>
                           <h4>Детали за книгата</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" Height="150px" Width="100px" src="book_inventory/guide.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row mb-2 ">
                     <div class="col ">
                         <label>Слика</label>
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                      <div class="col">
                          <label>Е-Копија</label>
                        <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Внеси линк од Е-Книгата"></asp:TextBox>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-5">
                        <label>Книга ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Книга ID"></asp:TextBox>
                              <div class="btn-group" role="group">
                                  <asp:Button class="btn btn-success" ID="Button4" runat="server" Text="Оди" OnClick="Button4_Click" />
                                  <asp:Button class="btn btn-info" ID="Button5" runat="server" Text="Исчисти" OnClick="Button5_Click" />
                              </div>

                           </div>
                        </div>
                     </div>
                       <div class="col-md-3">
                        <label>Нова Книга ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Книга ID" ReadOnly="true"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Име на Книгата</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Име на Книгата"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Јазик</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Македноски" Value="Македонски" />
                              <asp:ListItem Text="Англиски" Value="Англиски" />
                              <asp:ListItem Text="Албански" Value="Албански" />
                              <asp:ListItem Text="Германски" Value="Германски" />
                           </asp:DropDownList>
                        </div>
                        <label>Име на Издавач</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Издавач 1" Value="Издавач 1" />
                              <asp:ListItem Text="Издавач 2" Value="Издавач 2" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Име на Автор</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                        <label>Дата на Издавање</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Дата" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Жарн</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Акција" Value="Акција" />
                              <asp:ListItem Text="Авантура" Value="Авантура" />
                              <asp:ListItem Text="Стрип" Value="Стрип" />
                              <asp:ListItem Text="Мотивација" Value="Мотивација" />
                              <asp:ListItem Text="Здраво живеење" Value="Здраво живеење" />
                              <asp:ListItem Text="Криминалистика" Value="Криминалистика" />
                              <asp:ListItem Text="Драма" Value="Дарма" />
                              <asp:ListItem Text="Фантазија" Value="Фантазија" />
                              <asp:ListItem Text="Хорор" Value="Хорор" />
                              <asp:ListItem Text="Поезија" Value="Поезија" />
                              <asp:ListItem Text="Класика" Value="Класика" />
                              <asp:ListItem Text="Романтика" Value="Романтика" />
                              <asp:ListItem Text="Научна Фантастика" Value="Научна Фантастика" />
                              <asp:ListItem Text="Мистерија" Value="Мистерија" />
                              <asp:ListItem Text="Трилер" Value="Трилер" />
                              <asp:ListItem Text="Уметност" Value="Уметност" />
                              <asp:ListItem Text="Автобиографија" Value="Автобиографија" />
                              <asp:ListItem Text="Енциклопедија" Value="Енциклопедија" />
                              <asp:ListItem Text="Здравје" Value="Здравје" />
                              <asp:ListItem Text="Историја" Value="Историја" />
                              <asp:ListItem Text="Математика" Value="Математика" />
                              <asp:ListItem Text="Наука" Value="Наука" />
                              <asp:ListItem Text="Патувања" Value="Патувања" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Издадени Примероци</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Број на примероци"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Цена на Книга</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Цена на книга" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Страни</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Страни" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Вистинска состојба</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Вистинска состојба" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Моментална состојба</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Моментална состојба" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Издадени Книги</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Страни" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Опис на Книгата</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Опис" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Додади" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Обнови" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Избриши" OnClick="Button2_Click" />
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
                           <h4>Листа на Книги</h4>
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
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" />
                                
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="container-flued">
                                            <div class="row">
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                        </div>

                                                  </div>
                                                    <div class="row">
                                                        <div class="col-12">

                                                            Автор -
                                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                            &nbsp;| Жарн -
                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                            &nbsp;| Јазик -
                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                        </div>

                                                  </div>
                                                    <div class="row">
                                                        <div class="col-12">

                                                            Издавач -
                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                            &nbsp;| Дата на Издавање -&nbsp;
                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                            &nbsp;| Страни -
                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                            &nbsp;| Издание -
                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                        </div>

                                                  </div>
                                                    <div class="row">
                                                        <div class="col-12">

                                                            Цена -
                                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                            &nbsp;| Вистинска Состојба -
                                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                            &nbsp;| Моментална Состојба -
                                                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                            &nbsp;</div>

                                                  </div>
                                                    <div class="row">
                                                        <div class="col-12">

                                                            Опис -
                                                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Text='<%# Eval("book_description") %>'></asp:Label>

                                                        </div>

                                                  </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                </div>

                                            </div>



                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
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
