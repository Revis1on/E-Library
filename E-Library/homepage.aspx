<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="E_Library.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
	
        <!-- content -->
        <div id="content">
      
        <!-- main banner -->

	<div class="main_banner_wrap NE=a:hbn" id="mainBannerList" style="background:url(https://i.ibb.co/6rNg5KW/imageedit-1-4416044337.png) no-repeat 50% 0;background-size:cover">
	<div class="slider">
  <!-- slide -->
  <ul>
    <li class="active"></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
  </ul>
  <ol>
    <!-- point -->
    <li class="active"><i class="fa fa-circle-o"></i></li>
    <li><i class="fa fa-circle-o"></i></li>
    <li><i class="fa fa-circle-o"></i></li>
    <li><i class="fa fa-circle-o"></i></li>
    <li><i class="fa fa-circle-o"></i></li>
    <!-- playpause -->
    <i class="fa playpause fa-pause-circle-o" title="pause"></i>
  </ol>
  <!-- controll -->
  <span class="controll active"></span>
  <span class="controll"></span>
</div>
	


				</div>
				<!-- //main banner -->

			<!-- Spot -->
				<div class="main_daily_wrap NE=a:hdy" id="weekdayList">
					<div class="daily_tab_wrap">
						<div class="daily_tab_inner">
							<ul class="daily_tab" id="dailyTab">
								
								
									
										<li class="" data-weekday="MONDAY"><a href="#" class="btn_daily NPI=a:mon,g:en_en">ПОН</a></li>
									
								
									
										<li data-weekday="TUESDAY"><a href="#" class="btn_daily NPI=a:tue,g:en_en">ВТО</a></li>
									
								
									
										<li data-weekday="WEDNESDAY"><a href="#" class="btn_daily NPI=a:wed,g:en_en">СРЕ</a></li>
									
								
									
										<li data-weekday="THURSDAY"><a href="#" class="btn_daily NPI=a:thu,g:en_en">ЧЕТ</a></li>
									
								
									
										<li data-weekday="FRIDAY" class="on"><a href="#" class="btn_daily NPI=a:fri,g:en_en">ПЕТ</a></li>
									
								
									
										<li data-weekday="SATURDAY"><a href="#" class="btn_daily NPI=a:sat,g:en_en">САБ</a></li>
									
								
									
										<li data-weekday="SUNDAY"><a href="#" class="btn_daily NPI=a:sun,g:en_en">НЕД</a></li>
									
								
									
								
							</ul>
						</div>
					</div>

					<!-- /Spot -->
	




        <!-- /content -->
        </div>
        <!-- /container -->
    </div>

        

</asp:Content>
