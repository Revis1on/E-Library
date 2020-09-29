<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="E_Library.usersignup"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
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


    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="120px" src="Images/imgs/generaluser.png"/>
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
                        <div class="row mt-2 mb-1">
                       
                     <div class="col">
                       <center>
                         <span class="badge badge-pill badge-info">Информации за Корисникот</span>
                        </center>
                     </div>
                      
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                      
                         <label>Име и Презиме<span class="text-danger">*</span></label><div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Внесете Име и Презиме " TextMode="SingleLine" data-toggle="tooltip" data-placement="top" ToolTip="Вашето Име и Презиме" ></asp:TextBox>
                           
                        </div>

                     </div>
                      <div class="col-md-6">
                       
                          <label>Година на Раѓање<span class="text-danger">*</span></label>                      
                          <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Внеси дата" TextMode="Date"  data-toggle="tooltip" data-placement="top" ToolTip="Внесетеја вашата дата на раѓање во дадениот формат"></asp:TextBox>
                        </div>

                     </div>
                  </div>


                    <div class="row">
                     <div class="col-md-6">
                       
                         <label>Број за контакт<span class="text-danger">*</span></label>
                         <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Внесете телефонски број " TextMode="Phone" data-toggle="tooltip" data-placement="top" ToolTip="Пример 076123456"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Бројот не е валиден" ControlToValidate="TextBox1" Display="Dynamic" MinimumValue="0" class="text-danger" MaximumValue="100 000 000"></asp:RangeValidator>
                        </div>

                     </div>
                      <div class="col-md-6">
                       
                          <label>E-Пошта<span class="text-danger">*</span></label>
                          <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Внеси e-пошта" TextMode="Email" data-toggle="tooltip" data-placement="top" ToolTip="Вашата електронска адреса"></asp:TextBox>
                        </div>

                     </div>
                  </div>
                      <div class="row">
                     <div class="col-md-4">
                       
                         <label>Регион<span class="text-danger">*</span></label>
                         <div class="form-group">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" data-toggle="tooltip" data-placement="top" ToolTip="На кој административен регион припаѓате">
                                <asp:ListItem Text="Избери" Value="select" />
                                <asp:ListItem Text="Пелагониски" Value="select" />
                                <asp:ListItem Text="Скопски" Value="select" />
                                <asp:ListItem Text="Струмички" Value="select" />
                                <asp:ListItem Text="Тетовски" Value="select" />

                            </asp:DropDownList>
                        </div>

                     </div>
                      <div class="col-md-4">
                       
                          <label>Град<span class="text-danger">*</span></label>
                          <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Внеси град" TextMode="SingleLine" data-toggle="tooltip" data-placement="top" ToolTip="Моменталниот град во кој престојувате"></asp:TextBox>
                        </div>

                     </div>
                            <div class="col-md-4">
                       
                          <label>Поштенски код<span class="text-danger">*</span></label>
                                <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Внеси поштенски код" TextMode="Number" data-toggle="tooltip" data-placement="top" ToolTip="Поштенскиот код од градот"></asp:TextBox>
                        </div>

                     </div>
                  </div>
                    <div class="row">
                     <div class="col">
                       
                         <label>Адреса на живеење<span class="text-danger">*</span></label>
                         <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Внеси целосна адреса на живеење " TextMode="MultiLine" data-toggle="tooltip" data-placement="top" ToolTip="Вашата адреса која ќе биде искористена за испраќање на книги"></asp:TextBox>
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

                     <div class="row mt-2">
                     <div class="col-md-3">
                       
                         <label>Корисничко име<span class="text-danger">*</span></label>
                         <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Внеси корисничко име" data-toggle="tooltip" data-placement="top" ToolTip="Внесете име со кое ќе се најавувате на вашиот кориснички профил"></asp:TextBox>
                        </div>

                     </div>
                      <div class="col-md-4">
                          <label>Лозинка<span class="text-danger">*</span></label>
                          <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Внесете лозинка" TextMode="Password" data-toggle="tooltip" data-placement="top" ToolTip="Лозинка"></asp:TextBox>
                            
                        </div>

                     </div>
                          <div class="col-md-4">        
                          <label>Потврди Лозинка<span class="text-danger">*</span></label>
                              <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Внесете лозинка" TextMode="Password" data-toggle="tooltip" data-placement="top" ToolTip="Лозинка за вашиот кориснички профил"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" class="text-danger" ErrorMessage="Лозинките не се исти" ControlToCompare="TextBox9" ControlToValidate="TextBox10" Display="Dynamic"></asp:CompareValidator>
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

                     <div class="row">
                     <div class="col">               
                        <div class="form-group">
                        <label class="text-dark">Ве молиме потполнете ги сите полиња кои се означени со <span class="text-danger">*</span> !.</label>
                            <label class="text-dark">Пред да се регистрирате ви препорачување да ги прочитате нашите <a class="text-primary" href="#" >правила</a></label>
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
