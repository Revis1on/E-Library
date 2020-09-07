<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="E_Library.viewbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--Datatables js--%>
    <script src="DataTables/js/jquery.dataTables.min.js"></script>
    <script src="DataTables/js/dataTables.bootstrap4.min.js"></script>
    <%--DataTables css--%>

    <link href="DataTables/css/dataTables.bootstrap4.min.css" rel="stylesheet" />

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        $('#myModal').on('shown.bs.modal', function () {
            $('#myInput').trigger('focus')
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">

            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </asp:Panel>
                    </div>
                </div>
                <br />
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView class="table table-borderless" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" BorderColor="White" BorderStyle="None" OnRowCommand="GridView1_RowCommand">
                            <Columns>
                                <asp:BoundField DataField="book_id" ReadOnly="True" SortExpression="book_id">
                                    <ControlStyle Font-Bold="True" />
                                    <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                                <div class="shadow p-3 mb-5 bg-white rounded row">
                                                    <div class="col-lg-10">
                                                        <div class="row border-bottom">
                                                            <div class="col-12">
                                                                
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row border-bottom">
                                                            <div class="col-12 mt-2 mb-2">
                                                                <span>Автор - </span>
                                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                &nbsp;| <span><span>&nbsp;</span>Жарн - </span>
                                                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                &nbsp;|
                                                                            <span>Јазик -<span>&nbsp;</span>
                                                                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                            </span>
                                                            </div>
                                                        </div>
                                                        <div class="row border-bottom">
                                                            <div class="col-12 mt-2 mb-2">
                                                                Издавач -
                                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                &nbsp;| Датум на Издавање -
                                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                &nbsp;| Страни -
                                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                &nbsp;| Издание -
                                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-12 mt-2 mb-2">
                                                                Цена -
                                                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                &nbsp;| Состојба -
                                                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                &nbsp;| Моментална Состојба -
                                                                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row border">
                                                            <div class="col-12 mt-2 mb-2">
                                                                Опис -
                                                              
                                                                            <asp:Label ID="Label12" Text='<%# Eval("book_description").ToString().PadRight(200).Substring(0,200).TrimEnd() %>' runat="server" Font-Bold="True" Font-Italic="false" Font-Size="Smaller" ></asp:Label>              
                                                                            <asp:LinkButton ID="LinkButton1" runat="server" href="#popup" CommandName="Detail" CommandArgument="<%# Container.DataItemIndex  %>" >....Прочитајте Повеќе</asp:LinkButton>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="col-lg-2 ">
                                                        <asp:Image class="img-fluid border " ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                    </div>
                                                    <div class="col-12 mt-3">
                                                        <div class="btn-group" role="group">
                                                        <asp:Button class="btn btn-primary" runat="server" CommandName="Order" CommandArgument="<%# Container.DataItemIndex  %>" Text="Нарачај" ></asp:Button>
                                                        <asp:Button class="btn btn-info" runat="server"  CommandName ="Downnload"  Text="Превземи" OnClick="Button_Click1"></asp:Button>

                                                            </div>
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
    <div class="popup" id="popup">
    <div class="popup-inner">
      <div class="popup__photo">
        <img src="https://images.unsplash.com/photo-1515224526905-51c7d77c7bb8?ixlib=rb-0.3.5&s=9980646201037d28700d826b1bd096c4&auto=format&fit=crop&w=700&q=80" alt="">
      </div>
      <div class="popup__text">
            <div class="row">
            <div class="col-12 mt-2 mb-2">
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </div>
                </div>
            </div>
            <a class="popup__close" href="#">X</a>
        </div>
  </div>
                         <center>
                    <a href="homepage.aspx">
                        << Назад</a><span class="clearfix"></span>
                            <br />
                            <center>
</asp:Content>
