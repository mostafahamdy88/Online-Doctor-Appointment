<%@ Page Title="Doctor Personal Information" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorDetails.aspx.cs" Inherits="DocOnline.DoctorDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .title-style{
            margin-left:1px;
            margin-right:1px;
            background-color:#808080;
            text-align:center;
            color:#000000;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            height: 53px;
        }
        .auto-style1 {
            width: 68px;
        }
        .auto-style3 {
            font-size: 19pt;
            text-align: center;
            }
        .auto-style4 {
            font-size: 19pt;
            text-align: center;
            height: 74px;
        }
        .auto-style5 {
            width: 68px;
            height: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="title-style">Doctor Personal Information</h1>
    </center>
<center>
<table cellpadding="7px" cellspacing="2px" style="border-style: solid; border-color: #000000">
<tr>
<td class="auto-style3">
    <h2 style="text-align: right">
    <strong style="text-align: right; font-size: 14pt">Doctor Name: </strong>
    </h2>
</td>
<td class="auto-style1">
<h2 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; text-align: left;">
&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Black" style="font-size: medium"></asp:Label>
</h2>
</td>
</tr>
<tr>
<td class="auto-style4">
    <h2 style="text-align: right">
    <strong style="font-size: 14pt; text-align: right;">Doctor Type: </strong>
    </h2>
</td>
<td class="auto-style5">
<h2 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; text-align: left;" >
    &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Black" style="font-size: medium"></asp:Label>
</h2>
</td>
</tr>

<tr>
<td class="auto-style3">
    <h2 style="text-align: right"><strong style="font-size: 14pt">Doctor Gender:</strong></h2></td>
<td class="auto-style1">
<h2 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; text-align: left;" >
    &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Black" style="font-size: medium"></asp:Label>
</h2>
</td>
</tr>
<tr>
<td class="auto-style3">
    <h2 style="text-align: right">
    <strong style="font-size: 14pt">Doctor Phone: </strong>
    </h2>
</td>
<td class="auto-style1">
<h2 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; font-size: medium; text-align: left;" >
    &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Black" style="font-size: medium"></asp:Label>
</h2>
</td>
</tr>    
<tr>
<td class="auto-style3" colspan="2">
<asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/buttons/Editbtn.png" 
        PostBackUrl="~/DoctorUpdateDetails.aspx" Height="45px" Width="155px" />
</td>
</tr>    
<tr>
<td class="auto-style3" colspan="2">
    &nbsp;</td>
</tr>    
</table>
    <br />
</center>
<center>
</center>

</asp:Content>
