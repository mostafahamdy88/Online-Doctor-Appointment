<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/DashBoardMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="DocOnline.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.Addadminbtn
{
    margin-left:140px;
    margin-top:90px;
    
}
.Adddoctorbtn
{
    margin-left:120px;
}
.Viewcomments
{
    margin-left:160px;
}
.Hello
{   
 vertical-align:top;
 margin-left:20px;
 margin-top:0px;
}
.User
{
 vertical-align:top;
 margin-right:40px;
 
   
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/buttons/AddAdminBtn.png" CssClass="Addadminbtn" 
         PostBackUrl="~/AdminAddDashboard.aspx"/>
        <asp:ImageButton ID="ImageButton2" runat="server" CssClass="Adddoctorbtn" 
         Height="53px" ImageUrl="~/Images/buttons/AddDoctorBtn.png" 
         PostBackUrl="~/AddDocDashboard.aspx" />
        <asp:ImageButton ID="ImageButton3" runat="server" 
            ImageUrl="~/Images/buttons/ViewCommentsBtn.png" CssClass="Viewcomments"
         PostBackUrl="~/ViewComments.aspx" />

    </asp:Content>
