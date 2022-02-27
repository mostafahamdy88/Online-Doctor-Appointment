<%@ Page Title="Booking Appointment" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientBooking.aspx.cs" Inherits="DocOnline.PatientBooking" %>
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
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="title-style">Patient Appointment Booking</h1></center>
<center>
<table cellpadding="4px" cellspacing="4px" style="border-style: solid; border-color: #000000">
<tr>
  <td class="auto-style1">
    <h2 align="left" style="font-size: 14pt; text-align: right">
        Patient Name:
    </h2>
  </td>
  <td>
    <h3 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; font-size: medium; text-align: left;" >
        
&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="black" Font-Size="Medium"></asp:Label>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td class="auto-style1">
    <h2 align="left" style="font-size: 14pt; text-align: right">
        Appointment ID:</h2>
  </td>
  <td>
    <h3 style="border-style: solid; border-color: #73C7C2; width: 180px; height: 38px; font-size: medium; text-align: left;" >
        &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Black" Font-Size="Medium"></asp:Label>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td class="auto-style1">
    <h2 align="left" style="font-size: 14pt; text-align: right">
        Doctor Type:</h2>
  </td>
  <td>
    <h3>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="110px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True" Height="20px" style="font-weight: 700; border-style: solid; border-color: #73C7C2; width: 180px; height: 38px;">
        </asp:DropDownList>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td class="auto-style1">
    <h2 align="left" style="font-size: 14pt; text-align: right">
        Doctor Name:
    </h2>
  </td>
  <td>
    <h3>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="110px" style="font-weight: 700; border-style: solid; border-color: #73C7C2; width: 180px; height: 38px;">
        </asp:DropDownList>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td class="auto-style1">
    <h2 align="left" style="font-size: 14pt; text-align: right">
        Appointement Date:
    </h2>
  </td>
  <td>
    <h3>
        <asp:TextBox ID="TextBox1" runat="server" Height="27px" style="font-weight: 700; border-style: solid; border-color: #73C7C2; width: 180px; "></asp:TextBox>
        <asp:ImageButton ID="ImageButton1"
            runat="server" Height="40px" ImageUrl="~/Images/calendar2.png" 
            style="margin-top: 0px" Width="40px" onclick="ImageButton1_Click" />

        <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="White" 
            BorderColor="#3366CC" DayNameFormat="Shortest" Font-Names="Verdana" 
            Font-Size="8pt" ForeColor="#72DBD4" Height="200px" 
            ShowNextPrevMonth="False" Width="220px" 
            onselectionchanged="Calendar1_SelectionChanged" 
            ondayrender="Calendar1_DayRender" BorderWidth="1px" CellPadding="1">
            <DayHeaderStyle BackColor="#F74D4D" 
                ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
            <SelectorStyle BackColor="#F74D4D" ForeColor="#336666" />
            <TitleStyle BackColor="#72DBD4" Font-Bold="True" Font-Size="10pt" 
                ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px" />
            <TodayDayStyle BackColor="#F74D4D" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td class="auto-style1">
    <h2 align="left" style="text-align: right; font-size: 14pt">
        Appointment Time:
    </h2>
  </td>
  <td>
    <h3>
        <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="110px" style="font-weight: 700; border-style: solid; border-color: #73C7C2; width: 180px; height: 38px;" 
            AutoPostBack="True">
        </asp:DropDownList>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td class="auto-style1">
      &nbsp;</td>
  <td>
      &nbsp;</td>
  <td>
        &nbsp;</td>
</tr>
<tr>
  <td class="auto-style1" colspan="3">
      <center>
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/Images/buttons/Submitbtn.png" onclick="ImageButton2_Click" Height="45px" Width="160px" />
          </center>
  </td>
</tr>
</table>
</center>
<center>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
</center>
</asp:Content>
