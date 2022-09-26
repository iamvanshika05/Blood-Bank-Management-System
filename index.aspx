<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BloodDonation.com.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap-4.4.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap-4.4.1-dist/css/font-awesome.min.css" rel="stylesheet" />
    <link href="bootstrap-4.4.1-dist/css/style.css" rel="stylesheet" />

    <script src="bootstrap-4.4.1-dist/jquery.min.js"></script>
    <script src="bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
    <script src="bootstrap-4.4.1-dist/js/custom.js"></script>
    <style type="text/css">
        #img1{
            height:400px;
        }
        #img2{
            width:900px;
            height:400px;
        }
         #img3{
           height:400px;
           width:1000px;
        }
         .cimg{
             width:70px;
             height:70px;
         }
         .d1{
             width:20%;
             height:200px;
             border:outset;
             padding:10px;
             margin:30px;
             color:red;
             background-color:InfoBackground;
             float:left;
         }
         #d2{
             margin:20px;
         }
         .img2{
             width:100%;
             height:100%;
         }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="row">
        <div class="col-md-8 col-sm-8 col-xs-12">
            <div id="carousel-example" class="carousel slide slide-bdr" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/1.jpg" class="img-fluid" id="img1" />
                    </div>
                    <div class="carousel-item">
                        <img src="img/2.jpg" class="img-fluid" id="img2" />
                    </div>
                    <div class="carousel-item">
                        <img src="img/3.jpg" class="img-fluid" id="img3" />
                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"  ></li>
                     <li data-target="#carousel-example" data-slide-to="1"  ></li>
                     <li data-target="#carousel-example" data-slide-to="2"  ></li>
                </ol>
                <a class="carousel-control-prev" href="#carousel-example" data-slide="prev" >
                    <span class="carousel-control-prev-icon"></span>
                </a>
                 <a class="carousel-control-next" href="#carousel-example" data-slide="next" >
                    <span class="carousel-control-next-icon"></span>
                </a>
          </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="card border-primary " >
                <div class="card-header bg-primary  text-white">
                    See What Our Clebs Say About The Blood Donation...
                </div>
                <div class=" card-body chat-widget-main">
                    <div class="chat-widget-left">
                        The blood you donate gives someone another chance at life.
                    </div>
                    <br />
                    <div class="chat-widget-name-left">
                        <img id="c1" class="media-body rounded-circle  img-left-chat cimg "  src="img/will.png" /><br />
                        <h4>Will Smith</h4>
                    </div>
                    <hr />
                    <br />
                    <div class="chat-widget-right">
                        A life may depend on a gesture from you, a bottle of Blood.
                    </div>
                    <br />
                    <div class="chat-widget-name-right">
                        <img src="img/tom.png" class="media-body rounded-circle  img-right-chat cimg" />
                         <br />
                         <h4>Tom Crusie</h4>
                    </div>
                    <hr />
                    <br />
                    <div class="chat-widget-left">
                        The Blood Donor of today may be
                         recipient of tomorrow.
                    </div>
                    <div class="chat-widget-name-left">
                        <img src="img/Jolie.png"  class="media-body rounded-circle img-left-chat cimg"/><br />
                        <h4>Angelina Jollie</h4>
                    </div>
                    <hr />
                   
                     <div class="chat-widget-right">
                        Tears  of a mother cannot save her Child.
                         But your Blood can.
                    </div>
                   
                    <div class="chat-widget-name-right">
                        <img src="img/amit.png" class="media-body rounded-circle img-right-chat cimg" /><br />
                         <h4>Amitabh Bachchan</h4>
                    </div>
                    <hr />
                    <div class="chat-widget-left">
                        A life may depend on a gesture from you , a bottle of Blood.
                    </div>
                </div>

            </div>
        </div>

   </div>
     <div id="d2">
            <div class="d1">
                <a href="SignIn.aspx">
                <img src="img/1d.PNG" class="img2"/></a>
            </div>
            <div class="d1">
                <a href="SignIn.aspx">
                <img src="img/rq.PNG" class="img2"/>
                </a>
            </div>
            <div class="d1">
                <a href="SignIn.aspx">
                    <img src="img/d2.PNG" class="img2"/>
                </a>
            </div>
            <div class="d1"><a href="SignIn.aspx">
                <img src="img/d4.PNG" class="img2"/>
                </a>
            </div>
        </div>


</asp:Content>
