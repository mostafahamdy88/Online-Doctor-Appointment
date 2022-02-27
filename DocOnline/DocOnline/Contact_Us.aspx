<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="Contact_Us.aspx.cs" Inherits="DocOnline.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            width: 100%;
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
       
        .auto-style1 {
            font-size: large;
            text-align: right;
            width: 169px;
        }
        .auto-style2 {
            height: 45px;
        }
        .auto-style3 {
            text-align: right;
            width: 169px;
        }
        .auto-style4 {
            height: 45px;
            width: 169px;
        }
        .auto-style5 {
            width: 169px;
        }
        .putbox {
            text-align: center;
            margin-right: 73px;
        }
       
        .auto-style6 {
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 13pt;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <br />
    <h1 class="title-style">Contact Us</h1>
    <p style="box-sizing: border-box; margin: 0px 0px 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: Raleway, sans-serif; padding: 0px; border: 0px; color: rgb(51, 51, 51); letter-spacing: 0.5px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
        <span class="auto-style6"><strong>Please share your contact information along with you specific questions or 
        comments and we will get back to you within the next few hours</strong></span>.</p>
    <table class="style3" style="border-style: solid; border-color: #000000">
        <tr>
            <td class="auto-style4" style="font-size: large; font-weight: 700; text-align: right"  >
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-size: large; font-weight: 700; text-align: right"  >
                Name:</td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="putbox"  Height="27px" Width="230px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Name Is Required !" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style3" >
                <strong style="font-size: large; text-align: right">Email:</strong></td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="putbox" TextMode="SingleLine"  Height="27px" Width="230px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Valid Email !" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="font-weight: 700"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-weight: 700; font-size: large" >
                Phone No:</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" CssClass="putbox"  Height="27px" Width="230px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Phone No Is Required !" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-weight: 700; font-size: large" >
                Area:</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" CssClass="putbox"  Height="27px" Width="230px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Area Is Required !" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" >
                <strong>Comment:</strong></td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" CssClass="comment" Height="45px" Width="230px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Comment Is Required !" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" >
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="46px" ImageUrl="~/Images/buttons/Submitbtn.png" OnClick="ImageButton1_Click" Width="144px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="auto-style5" >
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    style="font-size: x-large"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
