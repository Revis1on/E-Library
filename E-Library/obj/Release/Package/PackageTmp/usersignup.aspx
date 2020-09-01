<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="E_Library.usersignup"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="Images/imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Регистрација</h4>
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
                       <center>
                         <span class="badge badge-pill badge-info">Информации за Корисникот</span>
                        </center>
                     </div>
                      
                  </div>

                   
                   <div class="row">
                     <div class="col-md-6">
                       
                         <label>Име и Презиме</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Внесете Име и Презиме "></asp:TextBox>
                        </div>

                     </div>
                      <div class="col-md-6">
                       
                          <label>Година на Раѓање</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Внеси дата" TextMode="Date"></asp:TextBox>
                        </div>

                     </div>
                  </div>


                    <div class="row">
                     <div class="col-md-6">
                       
                         <label>Број за контакт</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Внесете телефонски број " TextMode="Number"></asp:TextBox>
                        </div>

                     </div>
                      <div class="col-md-6">
                       
                          <label>E-мeил</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Внеси e-мeил" TextMode="Email"></asp:TextBox>
                        </div>

                     </div>
                  </div>
                      <div class="row">
                     <div class="col-md-4">
                       
                         <label>Регион</label>
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Избери" Value="select" />
                                <asp:ListItem Text="Пелагониски" Value="select" />
                                <asp:ListItem Text="Скопски" Value="select" />
                                <asp:ListItem Text="Струмички" Value="select" />
                                <asp:ListItem Text="Тетовски" Value="select" />

                            </asp:DropDownList>
                        </div>

                     </div>
                      <div class="col-md-4">
                       
                          <label>Град</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Внеси град" TextMode="SingleLine"></asp:TextBox>
                        </div>

                     </div>
                            <div class="col-md-4">
                       
                          <label>Поштенски код</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Внеси поштенски код" TextMode="Number"></asp:TextBox>
                        </div>

                     </div>
                  </div>
                    <div class="row">
                     <div class="col">
                       
                         <label>Адреса на живеење</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Внеси целосна адреса на живеење " TextMode="MultiLine"></asp:TextBox>
                        </div>

                     </div>
                  </div>

                   <div class="row">
                       
                     <div class="col">
                       <center>
                         <span class="badge badge-pill badge-info">Информации за Корисничкиот профил</span>
                        </center>
                     </div>
                      
                  </div>

                     <div class="row">
                     <div class="col-md-6">
                       
                         <label>Корисничко име</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Внеси корисничко име "></asp:TextBox>
                        </div>

                     </div>
                      <div class="col-md-6">
                       
                          <label>Лозинка</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Внесете лозинка" TextMode="Password"></asp:TextBox>
                        </div>

                     </div>
                  </div>




                  <div class="row">
                     <div class="col">               
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Регистрирај се" OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Назад</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>
