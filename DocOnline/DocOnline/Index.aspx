
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DocOnline.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
 
  .Doctorroundbtn
  {
   margin-left:2%;
   margin-right:2%;
  }
  .Patientroundbtn
  {
   margin-left:2%;
    
  }
  .Adminroundbtn
  {
   margin-right:1%;
   margin-right:2%;    
  }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <p style=" margin-left:30px;margin-top:70px;"> 
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/buttons/AdminButton.png" CssClass="Adminroundbtn" 
            PostBackUrl="~/AdminLogin.aspx" />
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/Images/buttons/Doctorbutton.png" CssClass="Doctorroundbtn" 
            PostBackUrl="~/DoctorLogin.aspx" />
    <asp:ImageButton ID="ImageButton3" runat="server" 
        ImageUrl="~/Images/buttons/PatientButton.png" CssClass="Patientroundbtn" 
            PostBackUrl="~/PatientLogin.aspx" />
   </p>
     </center>
</asp:Content>
