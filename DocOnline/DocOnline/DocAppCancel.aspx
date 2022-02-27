<%@ Page Title="Doctor Cancel Appointment" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DocAppCancel.aspx.cs" Inherits="DocOnline.DocAppCancel" %>
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
    <center><h1 class="title-style">Patient Appointments Cancel</h1></center>
<center>
 <table cellpadding="3px" cellspacing="3px" style="border-style: solid; border-color: #000000">
 <tr><td>
 <center>
 <table cellpadding="3px" cellspacing="3px">
 <tr>
 <td>
 <h3>Appointment ID:</h3>
 </td>
 <td>
 &nbsp;&nbsp;
 <asp:TextBox ID="TextBox1" runat="server" BorderColor="#73C7C2" BorderStyle="Solid" Height="27px"></asp:TextBox> 
 &nbsp;&nbsp;&nbsp; 
 </td>
 <td>
     <asp:Button ID="Button1" runat="server" Text="Delete" BackColor="#FF0000" 
         BorderStyle="None" Width="70px" onclick="Button1_Click" style="font-weight: 700" />
 </td>
 </tr>
</table>
 </center>
<center>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter Valid Appointment ID !" ForeColor="Red"></asp:RequiredFieldValidator>

</center>
</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td><asp:Label ID="MessegeLabel" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label></td></tr>
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="AppId" HeaderText="Appointment Id" />
            <asp:BoundField DataField="Patient_Name" HeaderText="Patient Name" />
            <asp:BoundField DataField="AppDate" HeaderText="Appointment Date" />
            <asp:BoundField DataField="Timeslot" HeaderText="Appointment Time" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#72DBD4" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#72DBD4" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br  />
    <br  />
    </td>
</tr>
</table>
</center>
</center>
</asp:Content>
