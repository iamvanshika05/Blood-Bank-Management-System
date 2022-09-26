<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminBloodStockUpdate.aspx.cs" Inherits="BloodDonation.com.AdminBloodStockUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Update Blood Stock
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        table{
            font-family: Arial, sans-serif;
            border-collapse:collapse;
            width:40%;
            margin-left:50%;
            margin-top:-20%;
        }
        td,th{
            border:1px solid #dddddd;
            text-align:center;
            padding:8px;
        }
        tr:nth-child(even)
        {
            background-color:#dddddd;
        }
        #bgu1{
            margin-left:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

    <div id="bgu1">
        <a href="Admin.aspx"><h3>Admin Home</h3></a>

        <h2>Select Blood Group to Update</h2>
        <br /><br />
        
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
            <asp:ListItem>(Select Blood Group)</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropDownList><br /><br />

        Enter Quantity:<br />
        <asp:TextBox ID="TextBox1" TextMode="Number" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
        <br /><br />

        <table >
            <tr>
                <th>Blood Group</th>
                <th>Available Blood Stock(in ML)</th>
            </tr>
        <tr>
            <td>A+</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>A-</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>B+</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>B-</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>O+</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>O-</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>AB+</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>AB-</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        </table>
           
    </div>
</asp:Content>
