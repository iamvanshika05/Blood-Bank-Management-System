<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="BloodDonation.com.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <style type="text/css"
>
        .container2{
            border:outset;
            width:400px;
            height:400px;
            padding:7px;
            margin-left:35%;
            margin-top:15%;
            background-color:coral;
            margin-top:40px;

        }
       input[type=text],input[type=password] {
            width:100%;
            padding:12px 20px;
            margin:8px 0;
            display:inline-block;
            border:1px solid #ccc;
            box-sizing:border-box;
        }
        .btn1{
            float:left;
            width:20%;
            height:10%;
            background-color:#4CAF50;
            color:white;
            margin-top:10px;
            border:none;
            cursor:pointer;
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container2">
        <br />
        Email:
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#009900"></asp:RequiredFieldValidator>
        <br />
       
        Password:
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="#009900"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label1" runat="server" forecolor="Red" ></asp:Label>
        <a href="SignUp.aspx">
            <h4 style="color:red;">New User?</h4>
        </a>
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn1" OnClick="Button1_Click" />
    </div>
</asp:Content>
