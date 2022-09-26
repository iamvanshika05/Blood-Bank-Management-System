﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BloodDonation.com.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Sign Up
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

       input[type=text],input[type=password],input[type=number]
         {
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
          margin-left:1%;
      }
      #btnSubmit{
          float:left;
          width:20%;
          color:white;
          padding:14px 20px;
          margin:8px 0;
          border:none;
          cursor:pointer;
      }
      .a1{
          float:left;
      }
       .l1{
           width:390px;
           height:1350px;
           margin:7px;
               
       }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="a1">
        <img class="l1" src="img/leftImg.jpg" />
    </div>

    <div class="container1 a1">  

        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        <br />
        <br />

        Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format" ForeColor="#009900" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        Mobile:
        <asp:TextBox ID="txtMobile" runat="server" TextMode="Number" MaxLength="10"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMobile" ErrorMessage="Number format must be correct" ForeColor="#669900" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
        <br />
        <br />

        Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbMale" runat="server"  GroupName="gen" Text="Male" Checked="true"/>
         
        &nbsp;&nbsp;
        <asp:RadioButton ID="rbFemale" runat="server"  GroupName="gen" Text="Female"/>
        <br />
        <br />
        

        Age: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
         <asp:DropDownList ID="ddAge" runat="server" AutoPostBack="true">
             <asp:ListItem >(select age)</asp:ListItem>
               <asp:ListItem >above 18</asp:ListItem>
               <asp:ListItem >below 18</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="ddAge"></asp:RequiredFieldValidator>
         <br />
        <br />
        <br />        
         
        Blood Group:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:DropDownList ID="ddBg" runat="server"  AutoPostBack="true">
            <asp:ListItem>(select Blood Group)</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>0-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropDownList>

         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="ddBg"></asp:RequiredFieldValidator>

         <br />
        <br />
        <br />   

        Weight(in kg):<asp:TextBox ID="txtWeight" TextMode="Number" runat="server"></asp:TextBox>
         
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="txtWeight"></asp:RequiredFieldValidator>
         
        <br /><br />

        Height(in Cm):<asp:TextBox ID="txtHeight" TextMode="Number" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="txtHeight"></asp:RequiredFieldValidator>

        <br /><br />

        Select Image:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:FileUpload ID="FileUpload1" runat="server" />
         
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
         
        <br />
        <br />
       
         
        Password:<asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password must be contain 3-9 character or numbers" ForeColor="#99CC00" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{3,10}$"></asp:RegularExpressionValidator>
        <br />
        <br />
     
        Address:<asp:TextBox ID="txtAddress"  runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        
        
     </div>
    <div class="a1">
        <img class="l1" src="img/rImg.jpg" />
    </div>    
          
       
</asp:Content>
