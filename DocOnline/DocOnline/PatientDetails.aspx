<%@ Page Title="Patient Details" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientDetails.aspx.cs" Inherits="DocOnline.PatientDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style> 
p.test {
    width: 15em; 
   word-wrap: break-word;
}
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
            font-size: 14pt;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="title-style">Personal Information</h1></center>
<center>
<table cellpadding="7px" cellspacing="2px" style="border-style: solid; border-color: #000000">
<tr>
<td>
<h2 align="Left" style="font-size: 14pt; text-align: right">
    Patient Name:</h2>
</td>
<td>
<h2 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; text-align: left;">
&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Black" Font-Size="Medium"></asp:Label>
</h2>
</td>
</tr>
<tr>
<td>
<h2 align="Left" style="text-align: right; font-size: 14pt">
    Patient Gender:</h2>
</td>
<td>
<h2 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; text-align: left;">
&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" ForeColor="black" Font-Size="Medium"></asp:Label>
</h2>
</td>
</tr>
<tr>
<td>
<h2 class="auto-style1">
    Patient Address:</h2>
</td>
<td>
<h2>
<h2 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; text-align: left;">
&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label" ForeColor="black" Font-Size="Medium"></asp:Label>
</h2>
</h2>
</td>
</tr>
<tr>
<td>
<h2 align="Left" style="font-size: 14pt; text-align: right">
    Patient BloodGroup: </h2>
</td>
<td>
<h2 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; text-align: left;">
&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Label" ForeColor="black" Font-Size="Medium"></asp:Label>
</h2>
</td>
</tr>
<tr>
<td>
<h2 align="Left" style="text-align: right; font-size: 14pt">
    Patient Phone:
</h2>
</td>
<td>
<h2 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; text-align: left;">
&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Label" ForeColor="black" Font-Size="Medium"></asp:Label>
</h2>
</td>
</tr> 
<tr>
<td colspan="2">
    <center>
<asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/buttons/Editbtn.png" 
        PostBackUrl="~/PatientUpdateDetails.aspx" Height="45px" Width="155px" />
        </center>
</td>
</tr> 
<tr>
<td colspan="2">
</td>
</tr> 
<tr>

</tr> 
</table>
</center>
<center>
</center>
</asp:Content>
