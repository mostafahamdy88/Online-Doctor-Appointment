<%@ Page Title="Show Patient Appointments" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientAppShow.aspx.cs" Inherits="DocOnline.PatientAppShow" %>
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
    <center><h1 class="title-style">Your Appointments</h1></center>
<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="AppId" HeaderText="Appointment Id" />
            <asp:BoundField DataField="DocName" HeaderText="Doctor Name" />
            <asp:BoundField DataField="Speciality" HeaderText="Doctor Speciality" />
            <asp:BoundField DataField="AppDate" HeaderText="Appointment Date" />
            <asp:BoundField DataField="Timeslot" HeaderText="Appointment Time" />
            <asp:BoundField DataField="Prec" HeaderText="Prescription" />
            <asp:BoundField DataField="Note" HeaderText="Notes" />
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
</center>
</asp:Content>
