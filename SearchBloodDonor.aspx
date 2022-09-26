<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SearchBloodDonor.aspx.cs" Inherits="BloodDonation.com.SearchBloodDonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Blood Donors
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .sb{
            margin-top:50px;
            margin-left:300px;
        }
        .gv1 td{
            padding:2px;
            text-align:center;
            width:150px;
            border:solid 1px #c1c1c1;
        }
        .gv1{
            background-color:lime;

        }
        .gv1 th{
            padding:2px;
            text-align:center;
            width:150px;
            border:solid 1px #c1c1c1;
            background-color:yellow;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="sb">
         <h2>
             Select Blood Group:
         </h2>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>(Select Blood Group)</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>

        </asp:DropDownList>
    </div>

    <div class="sb">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            CssClass="gv1" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr" >
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
        </asp:GridView>
        <br />
         
    </div>
</asp:Content>
