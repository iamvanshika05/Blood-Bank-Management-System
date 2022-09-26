﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="BloodBankStock.aspx.cs" Inherits="BloodDonation.com.BloodBankStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Blood Stock
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        table{
            font-family: Arial, sans-serif;
            border-collapse:collapse;
            width:40%;
            margin-left:30%;
            margin-top:5%;
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

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

    <table>
        <tr>
            <th>Blood Group</th>
            <th>Available Stock in ML</th>
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

</asp:Content>
