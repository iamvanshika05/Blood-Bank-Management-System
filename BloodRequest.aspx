﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="BloodRequest.aspx.cs" Inherits="BloodDonation.com.BloodRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Request for Blood
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        input[type=text]{
            width:100%;
            padding:12px 20px;
            margin:8px 0;
            display:inline-block;
            border:1px solid #ccc;
            box-sizing:border-box;
        }
        .container1{
            padding:20px;
            border:outset;
            width:35%;
            height:100%;
            margin-left:35%;
            margin-top:10px;

        }
        .btn1{
            float:left;
            width:20%;
          
            background-color:green;
            color:white;
            padding:14px 20px;
            margin:8px 0;
            border:none;
            cursor:pointer;
            margin-top:-20px;

        }
        .i1{
            margin-left:110px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

    <div>
        <h2>
            Check the following Details:
        </h2>

        <div class="container1">
            <div>
                <asp:Image ID="Image1" runat="server"  CssClass="i1"/>
            </div>

            Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            BloodGroup:<asp:TextBox ID="txtBG" runat="server"></asp:TextBox>
            <br />

             Email:<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
             Mobile:<asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            <br />

             Address:<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn1" OnClick="Button1_Click" Height="40px"/>

        </div>
    </div>
</asp:Content>
