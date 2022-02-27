<%@ Page Title="Add Prescription" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="AddPrescription.aspx.cs" Inherits="DocOnline.AddPrescription" %>
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
            text-align: right;
            font-size: large;
        }
        .auto-style3 {
            text-align: right;
        }
    .auto-style4 {
        width: 166px;
    }
    .auto-style5 {
        text-align: right;
        width: 129px;
    }
    .auto-style6 {
        width: 172px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="title-style">Add Prescription</h1></center>
<br />
<table cellpadding="5px"  cellspacing="5px" align="center" style="border-style: solid; border-color: #000000; width: 616px;" >
<tr>
<td class="auto-style5">&nbsp;</td>
<td align="left" class="auto-style4">&nbsp;</td>
<td align="left" class="auto-style6">
    &nbsp;</td>
</tr>
<tr>
<td class="auto-style5"><h2 style="font-size: large; text-align: right">Appointment ID:</h2></td>
<td align="left" class="auto-style4"><asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox> </td>
<td align="left" class="auto-style6">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*ID Is Required !" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="auto-style5"><h2 class="auto-style1">Precription:</h2></td>
<td align="left" class="auto-style4"><asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox> </td>
<td align="left" class="auto-style6">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Prescription Required !" ForeColor="Red" style="font-weight: 700; font-size: 13pt;"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="auto-style5"><h2 align="left" style="font-size: large; text-align: right">Note:</h2></td>
<td class="auto-style4"><asp:TextBox ID="TextBox3" runat="server" Height="51px" TextMode="MultiLine" BorderColor="#73C7C2" BorderStyle="Solid"
        Width="190px"></asp:TextBox> </td>
<td class="auto-style6">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Note Is Required !" ForeColor="Red" style="font-weight: 700" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="auto-style5">&nbsp;</td>
<td class="auto-style4">&nbsp;</td>
<td class="auto-style6">
    &nbsp;</td>
</tr>
<tr>
<td colspan="3" class="auto-style3"><center>
    <asp:ImageButton ID="AddBtn" runat="server" Height="50px" ImageUrl="~/Images/buttons/AddBtn.png" OnClick="AddBtn_Click" Width="155px" />
    </center>
    </td>
</tr>
<tr>
<td colspan="3" class="auto-style3">&nbsp;<center><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></center></td>
</tr>
</table>

    <br />
    <br />
</asp:Content>
