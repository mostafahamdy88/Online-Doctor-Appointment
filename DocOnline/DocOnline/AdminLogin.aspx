<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="DocOnline.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.BtnLogin
{
    position:fixed;
}
        .auto-style1 {
            height: 81px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="title-style">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Login</h1>
<table style="border-style: solid; border-color: #000000; margin-left:40%; width: 320px;" cellpadding="10px" cellspacing="10px">
 <tr>
   <td>
       <center>
       <asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
           </center>
     </td>
    </tr>
 
 <tr>
   <td>
       <center>
       <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="180px" placeholder="Username" style="text-align:center"  BorderColor="#73C7C2" BorderStyle="Solid" ></asp:TextBox>
       </center>
       <center>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Username Is Required !" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
           </center>
     </td>
    </tr>
    <tr>
   <td class="auto-style1">
       <center>
       <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="180px" 
            TextMode="Password" placeholder="Password" style="text-align:center; font-size: medium;" BorderColor="#73C7C2" BorderStyle="Solid" ></asp:TextBox>
       </center>
       <center>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Password Is Required !" ForeColor="Red"></asp:RequiredFieldValidator>
           </center>
     </td>
    </tr id="BtnLogin">
    <tr>
   <td>
       
          &nbsp;
       <center>
          <asp:ImageButton ID="ImageButton1" runat="server" Height="45px" 
              ImageUrl="~/Images/buttons/Loginbtn.png" Width="155px" 
              onclick="ImageButton1_Click" style="text-align: center" />
           </center>
    </td>
    </tr>
    
</table>
</asp:Content>
