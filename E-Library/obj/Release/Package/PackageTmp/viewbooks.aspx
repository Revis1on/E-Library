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

        function openModal() {
            $('[id*=myModal]').modal('show');
        } 
         
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <div class="container mt-2">
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
                        <asp:GridView class="table table-borderless" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" BorderColor="White" BorderStyle="None" OnRowCommand="GridView1_RowCommand" >
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
                                                                
                                                                <asp:Label ID="BookNameL" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-12 mt-2 mb-2">
                                                                <span style="font-family: Arial">Автор - </span>
                                                                <asp:Label ID="AvtorIDL" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                &nbsp;| <span><span>&nbsp;</span>Жарн - </span>
                                                                <asp:Label ID="GenreL" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                &nbsp;|
                                                                            <span>Јазик -<span>&nbsp;</span>
                                                                                <asp:Label ID="LanguageL" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                            </span>
                                                            </div>
                                                        </div>
                                                        
                                                           
                                                                         <asp:HiddenField ID="Publd" runat="server" Value='<%# Eval("publisher_name") %>' />
                                                                         <asp:HiddenField ID="PubNL" runat="server" Value='<%# Eval("publish_date") %>' />
                                                                         <asp:HiddenField ID="NopL" runat="server" Value='<%# Eval("no_of_pages") %>' />
                                                                         <asp:HiddenField ID="EditionL" runat="server" Value='<%# Eval("edition") %>' />
                                                                         <asp:HiddenField ID="BookCost" runat="server" Value='<%# Eval("book_cost") %>' />
                                                                         <asp:HiddenField ID="Acs" runat="server" Value='<%# Eval("actual_stock") %>' />
                                                                         <asp:HiddenField ID="Crs" runat="server" Value='<%# Eval("current_stock") %>' />
                                                                         <asp:HiddenField ID="bks" runat="server" Value='<%# Eval("book_description") %>' />
                                                                         <asp:HiddenField ID="img" runat="server" Value='<%# Eval("book_img_link") %>' />
                                                           
                                                        
                                                        <div class="row ">
                                                            <div class="col-12 mt-2 mb-2">
                                                                Опис -       
                                                                            <asp:Label ID="BdL" Text='<%# Eval("book_description").ToString().PadRight(250).Substring(0,250).TrimEnd() %>' runat="server" Font-Bold="True" Font-Italic="false" Font-Size="Smaller" ></asp:Label>
                                                                            <asp:LinkButton ID="LinkButton1" runat="server" onClick="Display" class="btn btn-link" >...прочитај повеќе</asp:LinkButton>
                                                                       
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="col-lg-2 ">
                                                        <asp:Image class="img-fluid border " ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                    </div>
                                                    <div class="col-12 mt-3">
                                                        <div class="btn-group" role="group">
                                                        <asp:Button class="btn btn-primary" runat="server" CommandName="Order" CommandArgument="<%# Container.DataItemIndex  %>" Text="Изнајми" ></asp:Button>
                                                            <asp:LinkButton class="btn btn-info" runat="server" CommandArgument='<%# Eval("book_file_link") %>' CommandName="Redirect" Text="Превземи" ></asp:LinkButton>
                                                            



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

     <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog  modal-lg">
    <div class="modal-content">
      <div class="modal-header">
          <asp:Label ID="BookNameL" runat="server" class="modal-title"  Text="Label" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

                                                        <div class="col">
                                                        <asp:Image class="img-fluid float-right  " ID="Image2" runat="server" />
                                                    </div>
                                                    <div class="col-lg-10">
                                                        <div class="row border-bottom">
                                                            <div class="col-12">
                                                                Автор: <asp:Label ID="AvtorIDL" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                                                                Датум на Издавање: <asp:Label ID="PubNL" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                                                                
                                                            </div>
                                                        </div>
                                                         <div class="row border-bottom ">
                                                            <div class="col-12 mt-2 mb-2">
                                                             Страни: <asp:Label ID="NopL" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                                                                Жарн: <asp:Label ID="GenreL" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-12 mt-2 ">
                                                                   Опис:
                                                                   <asp:Label ID="bks" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                 
                                                    
                                               
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Затвори</button>
        <asp:LinkButton class="btn btn-info" runat="server" CommandArgument='<%# Eval("book_file_link") %>' CommandName="Redirect" Text="Превземи" ></asp:LinkButton>
      </div>
    </div>
  </div>
</div>

                         <center>
                    <a href="homepage.aspx">
                        << Назад</a><span class="clearfix"></span>
                            <br />
                            <center>
</asp:Content>
