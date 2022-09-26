<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="BloodDonation.com.UserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">User Details
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
        .container1 {
            padding: 20px;
            border: outset;
            width: 35%;
            height: 100%;
            margin-left: 35%;
        }
        .imgu{
            width:200px;
            height:200px;
        }
        #uimg{
           margin-left:25%;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container1">
        <div id="uimg">
            <asp:Image ID="Image1" runat="server" CssClass="imgu" />
        </div>

        Name:
        <asp:TextBox ID="txtName" runat="server" Enabled="false"></asp:TextBox>
        <br /><br />

         Email:
        <asp:TextBox ID="txtEmail" runat="server"  Enabled="false"></asp:TextBox>
        <br /><br />
          Mobile:
        <asp:TextBox ID="txtMobile" runat="server"  Enabled="false"></asp:TextBox>
        <br /><br />
          Gender:
        <asp:TextBox ID="txtGender" runat="server"  Enabled="false"></asp:TextBox>
        <br /><br />
          Age:
        <asp:TextBox ID="txtAge"  Enabled="false" runat="server"></asp:TextBox>
        <br /><br />
          Blood Group:
        <asp:TextBox ID="txtBg"  Enabled="false" runat="server"></asp:TextBox>
        <br /><br />
          Weight:
        <asp:TextBox ID="txtWeight"  Enabled="false" runat="server"></asp:TextBox>
        <br /><br />
          Height:
        <asp:TextBox ID="txtHeight"  Enabled="false" runat="server"></asp:TextBox>
        <br /><br /> 
         Address:
        <asp:TextBox ID="txtAddress"  Enabled="false" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br /><br />
    </div>
</asp:Content>                                      
