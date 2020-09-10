<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="E_Library.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="assets/css/animate.min.css">


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

	<main>
        <!-- ? Preloader Start -->
  
        <!--? slider Area Start-->
       
        <section class="slider-area img-fluid">
            <div class="container">
            <div class="slider-active">
                <!-- Single Slider -->
                <div class="single-slider slider-height d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-7 col-md-12">
                                <div class="hero__caption f_widget company_widget wow fadeInLeft" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInLeft;">
                                    <h1 data-animation="fadeInLeft" data-delay="0.2s">E-Библиотека<br> </h1>
                                    <p data-animation="fadeInLeft" data-delay="0.4s">Лесен начин на пристап до илјадници книги </p>
                                    <a href="usersignup.aspx" class="btnt hero-btnt" data-animation="fadeInLeft" data-delay="0.7s">Регистрирај се !</a>
                                </div>
                            </div>
                        </div>
                    </div>          
                </div>
            </div>
                </div>
        </section>
            
        <!-- ? services-area -->
        <div class="services-area">
            <div class="container">
                <div class="row justify-content-sm-center">
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="single-services mb-30">
                            <div class="features-icon">
                                <img src="assets/img/icon/icon1.svg" alt="">
                            </div>
                            <div class="features-caption">
                                <h3>1к + Книги</h3>
                                <p>Огромна колекција на книги</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="single-services mb-30">
                            <div class="features-icon">
                                <img src="assets/img/icon/icon2.svg" alt="">
                            </div>
                            <div class="features-caption">
                                <h3>Одлична Администрација</h3>
                                <p>Брз и ефикасен одговор на секое ваше прашање</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="single-services mb-30">
                            <div class="features-icon">
                                <img src="assets/img/icon/icon3.svg" alt="">
                            </div>
                            <div class="features-caption">
                                <h3>Брза Достава</h3>
                                <p>Гарантирана достава на книги во рок од 3 дена</p>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            
        </div>
        
        </main>
				<!-- //main banner -->

			
        

</asp:Content>
