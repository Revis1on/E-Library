<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="howitworks.aspx.cs" Inherits="E_Library.howitworks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $('.expand-collapse h3').each(function () {
                var tis = $(this), state = false, answer = tis.next('div').slideUp();
                tis.click(function () {
                    state = !state;
                    answer.slideToggle(state);
                    tis.toggleClass('active', state);
                });
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container mt-3">
    <div class="row">
        <div class="col-md-12 mx-auto">
            <div class="row mt-3 mb-3 ml-5"><h2 class="font-weight-bolder">Упаство за користење на платформата</h2></div>
            <div class="accordion " id="expand-collapse">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left " type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          1. Регистрација
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
       <div class="row">
           <div class="col-md-6">
               <br />
               <span><span class="font-weight-bold">1.</span> Внесете го вашето име и презиме. <br />
                   <br />
               <span class="font-weight-bold">2.</span> Внесете го вашиот датум на раѓање почнувајќи со <br /> месецот/денот/годината. <br />
                   <br />
               <span class="font-weight-bold">3.</span> Вашиот телефонски број со кој можеме да ве добиеме.<br />
                   <br />
               <span class="font-weight-bold">4.</span> Вашата електронска пошта.<br />
                   <br />
               <span class="font-weight-bold">5.</span> Административниот регион во кој престојувате.<br />
                   <br />
               <span class="font-weight-bold">6.</span> Општината во која престојувате.<br />
                   <br />
               <span class="font-weight-bold">7.</span> Поштенскиод код од Општината во која престојувате.<br />
                   <br />
               <span class="font-weight-bold">8.</span> Вашата целосна адреса со цел за правилна достава на книгите.<br />
                   <br />
               <span class="font-weight-bold">9.</span> Корисничко име кое ќе го користите за да се најавувате <br />
                   <br />
               <span class="font-weight-bold">10.</span> Лозинка која ќе ја користите за да се најавувате <br />
                   <br />
               <span class="font-weight-bold">11.</span> Повторно напишете ја вашата лозинка <br />
               <br />
                   <br />
                Откако ќе ги полните сите чекори стегнете на копчето <br /> <span class="font-weight-bolder">Регистрирај се.</span>  


               </span>
               
           </div>
              <div class="col-md-6">
               <img class="img-fluid float-right" width="500px" src="Images\imgs\registerManual.png" />
           </div>
       </div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          2. Најава
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
       <div class="row">
           <div class="col-md-6">
               <span>
                   <br />
                     <span class="font-weight-bold">1.</span> Го внесувате корисничкото име со кое сте се регистрирале.<br />
                   <br />
               <span class="font-weight-bold">2.</span> Ја внесувате лозиката со која сте се регистрирале.<br />
                   <br />
               <span class="font-weight-bold">3.</span> Во случај да ја заборавите вашата лозинка го стегате овај линк. Окако ќе се појави формата за враќање на лозинка вие треба да ја внесите само е-поштата со која сте имате регистрирано.<br />
                   <br />
                   Откако ќе ги пополните полињате вие ќе можите да се најавите со кликање на копчето <span class="font-weight-bolder">Најава</span> .

               </span>

           </div>
           <div class ="col-md-6">
               <img class="img-fluid float-right" src="Images\imgs\loginManual.png" />
           </div>
       </div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          3. Промена на Персонални информации
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
        <div class="row">
           <div class="col-md-6">
               <br />
               <span>За да стасате на вашиот корснички профил го кликате вашето име откако ќе се најавите</span>
               <br />
               <span><span class="font-weight-bold">1.</span> Внесете го вашето име и презиме. <br />
                   <br />
               <span class="font-weight-bold">2.</span> Внесете го вашиот датум на раѓање почнувајќи со <br /> месецот/денот/годината. <br />
                   <br />
               <span class="font-weight-bold">3.</span> Вашиот телефонски број со кој можеме да ве добиеме.<br />
                   <br />
               <span class="font-weight-bold">4.</span> Вашата електронска пошта.<br />
                   <br />
               <span class="font-weight-bold">5.</span> Административниот регион во кој престојувате.<br />
                   <br />
               <span class="font-weight-bold">6.</span> Општината во која престојувате.<br />
                   <br />
               <span class="font-weight-bold">7.</span> Поштенскиод код од Општината во која престојувате.<br />
                   <br />
               <span class="font-weight-bold">8.</span> Вашата целосна адреса со цел за правилна достава на книгите.<br />
                   <br />
               <span class="font-weight-bold">9.</span> Корисничко име за најава неможите да го промените<br />
                   <br />
               <span class="font-weight-bold">10.</span> Старата лозинка не можете да ја промените <br />
                   <br />
               <span class="font-weight-bold">11.</span> Тука ја пишувате новата лозинка <br />
                   <br />
               <span class="font-weight-bold">12.</span> Статусот на корисничкиот профил треба да ви е активен за да можете да изнајмувате книги <br />
               <br />
                   <br />
                Откако ќе ги полните сите чекори стегнете на копчето <br /> <span class="font-weight-bolder">Зачувај.</span>  


               </span>
               
           </div>
              <div class="col-md-6">
               <img class="img-fluid float-right" width="500px" src="Images\imgs\profileManual.png" />
           </div>
      </div>
    </div>
  </div>

  </div>
                      <div class="card">
    <div class="card-header" id="headingFour">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
         4. Изнајмување на Книги
        </button>
      </h2>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
      <div class="card-body">
        <div class="row">
           <div class="col-md-6">
               <span>
                   Со кликање на копчето <span class="font-weight-bolder">Изнајми</span>  автоматски ќе се генерира нарачка со одбраната книга како што е дадено да сликата.<br />
                   Со кликање на копчето <span class="font-weight-bolder">Зачувај</span>  ќе се испрати барање до Администрацијата за изнајмување.<br />
                   Администраторот го разгледува барањето и одлучува дали ќе го одобри истото.<br /> Откако ќе го одобри барана книга ќе биде испратена по курирска служба и за 2-3 бизнис дена истата ќе биде доставена.<br />
                   Враќањето на книгата се врши исто по пат на пошта или со носење на книгата во самите простории на библиотеката. <br />Во случај на закаснивање поголемо од 5 дена се наплаќа затезна камата.<br />
                   Дали вашата книга ќе биде издадена тоа можете да го видите во вашиот профил во секцијата на Издадени Книги.
               </span>
           </div>
           <div class ="col-md-6">
               <img class="img-fluid float-right" width="500px" src="Images\imgs\orderManual.png" />
           </div>
            </div>
          <div class="row mt-6">
              <div class="col-md-auto ml-5 ">
                 <img class="img-fluid float-right " width="700px" src="Images\imgs\bookManual_1.png" />
              </div>
          </div>
       </div>
      </div>
    </div>
            <div class="card">
    <div class="card-header" id="headingFive">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
          5. Електронски Книги
        </button>
      </h2>
    </div>
    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
      <div class="card-body">
      Со кликање на <span class="font-weight-bolder">Превземи</span> книгате ќе биде симната во електронски формат односно pdf формат.<br />
          За да можите да ја читате истата ќе ви биде потребна алатка за читање pdf документи. <br />
          Ако ја немате алатката истата можете да ја добиете на следниов <asp:HyperLink ID="HyperLink1" class="text-info" runat="server" NavigateUrl="https://get.adobe.com/reader/">линк</asp:HyperLink>
      </div>
    </div>
  </div>
</div>
         
        </div>
    </div>
</div>

</asp:Content>
