<%@ Page Title="Doctor Update Informations" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorUpdateDetails.aspx.cs" Inherits="DocOnline.DoctorUpdateDetails" %>
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
            width: 174px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="title-style">Update Personal Information</h1></center>
<center>
<table cellpadding="7px" cellspacing="2px" style="border-style: solid; border-color: #000000">
<tr>
<td>
    &nbsp;</td>
<td colspan="2">
    &nbsp;</td>
<td class="auto-style1">
    &nbsp;</td>
</tr>
<tr>
<td>
<h2 align="Left" style="font-size: 14pt; text-align: right">
    Doctor Name:
</h2>
</td>
<td colspan="2">
<h2 Align="left">
    <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
</h2>
</td>
<td class="auto-style1">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Only Character Allowed !" 
        ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td>
<h2 align="Left" style="font-size: 14pt">
    Doctor Gender:
</h2>
</td>
<td align="left" colspan="2">
<asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="RadioBtn" 
        Checked="True" style="font-weight: 700"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="RadioBtn" style="font-weight: 700"/>
</td>
<td class="auto-style1">
    &nbsp;</td>
</tr>
<tr>
<td>
<h2 align="Left" style="font-size: 14pt; text-align: right">
    Doctor Type:</h2>
</td>
<td colspan="2">
<h2 Align="left">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="27px" style="font-weight: 700" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid">
    </asp:DropDownList>
</h2>
</td>
<td class="auto-style1">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*Select Doctor Type !" ForeColor="Red" InitialValue="Select" 
        ControlToValidate="DropDownList1" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>
<h2 align="Left" style="font-size: 14pt; text-align: right">
    Doctor Phone: 
</h2>
</td>
<td colspan="2">
<h2 Align="left">
    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
</h2>
</td>
<td class="auto-style1">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Phone No. Is Required !" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr> 
<tr>
<td colspan="2">
    <br />
    <center>
<asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/buttons/Updatebtn.png" onclick="ImageButton1_Click" Height="45px" Width="150px" />
    </center>
</td>
<td colspan="2">
    <br />
    <center>
<asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/Images/buttons/Cancelbtn.png" Height="45px" 
        PostBackUrl="~/DoctorDetails.aspx" CausesValidation="False" Width="150px" />
        </center>
</td>
</tr> 
<tr>
<td colspan="4">
<asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:Label>
</td>
</tr> 
<tr>
<td>
    &nbsp;</td>
<td colspan="2">
    &nbsp;</td>
<td class="auto-style1">
    &nbsp;</td>
</tr> 
</table>
</center>
<center>

&nbsp;

</center>
<center>
</center>

</asp:Content>
