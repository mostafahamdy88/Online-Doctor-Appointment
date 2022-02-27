<%@ Page Title="Forget Password" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="DocOnline.ForgetPassword" %>
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
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="title-style"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbspPassword Recovery</h1></center>
<center>
<table cellpadding="2px" cellspacing="2px">
<tr>
<td><h2><asp:Label ID="Label6" runat="server" Text="" style="font-size: large"></asp:Label></h2></td>
<td><asp:TextBox ID="TextBox1" runat="server" Width="190px" Height="27px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox></td>
</tr>
</table>
</center>
<center>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/buttons/Submitbtn.png" onclick="ImageButton1_Click" Height="45px" Width="155px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" Height="45px" ImageUrl="~/Images/buttons/Backbtn.png" OnClick="ImageButton2_Click" Width="155px" />
    <br /><br />
<table cellpadding="2px" cellspacing="2px">    
 <tr>
    <td><h2><asp:Label ID="Label4" runat="server" ForeColor="Black" style="font-size: large"></asp:Label> </h2></td>
    <td><h2><asp:Label ID="Label2" runat="server" ForeColor="Red" style="font-size: large"></asp:Label></h2></td>
</tr>
 <tr>
    <td><h2><asp:Label ID="Label5" runat="server" ForeColor="Black" style="font-size: large"></asp:Label> </h2></td>
    <td><h2><asp:Label ID="Label3" runat="server" ForeColor="Red" style="font-size: large"></asp:Label></h2></td>
</tr>
    
</table>
</center>
</asp:Content>
