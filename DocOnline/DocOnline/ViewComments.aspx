<%@ Page Title="View Comments" Language="C#" MasterPageFile="~/ViewComments.Master" AutoEventWireup="true" CodeBehind="ViewComments.aspx.c" Inherits="DocOnline.ViewComments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.Addadminbtn
{
    margin-left:270px;
    margin-top:50px;
    
}
.Adddoctorbtn
{
    margin-left:200px;
}
.Hello
{   
 vertical-align:top;
 margin-left:20px;
}
.User
{
 vertical-align:top;
 margin-right:40px;
   
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
    <center><h1 class="title-style">View Comments</h1></center>
    <center style="margin-top:20px">    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ContactId" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="ContactId" HeaderText="ContactId" InsertVisible="False" ReadOnly="True" SortExpression="ContactId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#72DBD4" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#72DBD4" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS %>" SelectCommand="SELECT * FROM [contactus]"></asp:SqlDataSource>
        
</asp:Content>
