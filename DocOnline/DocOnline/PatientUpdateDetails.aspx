<%@ Page Title="Patient Update Details" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientUpdateDetails.aspx.cs" Inherits="DocOnline.PatientUpdateDetails" %>
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
            width: 190px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="title-style">Update Personal Information</h1></center>
<center>
<table cellpadding="7px" cellspacing="2px" style="border-style: solid; border-color: #000000">
<tr>
<td>
<h2 align="Left" style="font-size: 14pt; text-align: right">
    Patient Name:
</h2>
</td>
<td class="auto-style1" colspan="2">
<h2 Align="left">
    <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
</h2>
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Name Is Required !" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
<h2 align="Left" style="text-align: right; font-size: 14pt">
    Patient Gender:</h2>
</td>
<td align="left" class="auto-style1" colspan="2">
<asp:RadioButton ID="RadioButton1" runat="server" Text="Male" Checked="true" GroupName="RadioBtn" style="font-weight: 700"/> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
<asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="RadioBtn" style="font-weight: 700"/>
</td>
</tr>
<tr>
<td>
<h2 align="Left" style="text-align: right; font-size: 14pt">
    Patient Address:</h2>
</td>
<td class="auto-style1" colspan="2">
<h2 Align="left">
    <asp:TextBox ID="TextBox3" runat="server" Height="46px" TextMode="MultiLine" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
</h2>
</td>
</tr>
<tr>
<td>
<h2 align="Left" style="text-align: right; font-size: 14pt">
    Patient BloodGroup: </h2>
</td>
<td class="auto-style1" colspan="2">
<h2 Align="left">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>A+</asp:ListItem>
        <asp:ListItem>B+</asp:ListItem>
        <asp:ListItem>AB+</asp:ListItem>
        <asp:ListItem>O+</asp:ListItem>
        <asp:ListItem>O-</asp:ListItem>
        <asp:ListItem>AB-</asp:ListItem>
        <asp:ListItem>B-</asp:ListItem>
        <asp:ListItem>A-</asp:ListItem>
    </asp:DropDownList>
</h2>
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*Select Blood Group !" ForeColor="Red" InitialValue="Select" 
        SetFocusOnError="True" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
<h2 align="Left" style="text-align: right; font-size: 14pt">
    Patient Phone:</h2>
</td>
<td class="auto-style1" colspan="2">
<h2 Align="left">
    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
</h2>
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Phone Is Required !" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
</td>
</tr> 
<tr>
<td>
    &nbsp;</td>
<td class="auto-style1" colspan="2">
    &nbsp;</td>
<td>
    &nbsp;</td>
</tr> 
<tr>
<td colspan="2">
    <center>
<asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/buttons/Updatebtn.png" onclick="ImageButton1_Click" Height="45px" Width="155px" />
    </center>
</td>
<td colspan="2">

    <center>
<asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/Images/buttons/Cancelbtn.png" Height="45px" 
        PostBackUrl="~/PatientDetails.aspx" CausesValidation="False" Width="155px" />
        </center>
</td>
</tr> 
<tr>
<td colspan="4">
<asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
</td>
</tr> 
</table>
</center>
<center>

&nbsp;

&nbsp;
</center>
<center>
</center>
</asp:Content>
