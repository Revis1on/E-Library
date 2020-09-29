<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="conctact.aspx.cs" Inherits="E_Library.conctact" %>
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

<div class="container mt-2">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="Images/imgs/message.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Контакт</h4>
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
                       
                         <label>Име и Презиме</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Внесете Име и Презиме "></asp:TextBox>
                        </div>

                     </div>
                      <div class="col-md-6">
                       
                          <label>Број за контакт</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Внесете телефонски број " TextMode="Number"></asp:TextBox>
                        </div>

                     </div>
                  </div>
                    <div class="row">
                      <div class="col-md-12">
                          <label>E-мeил</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Внеси E-Пошта" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                         <label>Порака</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Содржина на пораката" TextMode="MultiLine"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  </div>
                  <div class="row">
                     <div class="col">               
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" OnClick="Button1_Click" ID="Button1" runat="server" Text="Испрати" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Назад</a><br><br>
         </div>
      </div>

</asp:Content>
