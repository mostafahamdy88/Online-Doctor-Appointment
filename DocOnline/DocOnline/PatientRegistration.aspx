<%@ Page Title="Patient Registeration" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="DocOnline.PatientRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.Table1
{
    margin-left:27%;
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
            width: 143px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="title-style">Patient Registration</h1></center>
<table class= "Table1" cellpadding="5px" cellspacing="6px" style="border-color: #000000; border-style: solid;">
 <tr>
     <td class="auto-style1">

        <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: medium;" Text="Name:" 
             Font-Bold="False"></asp:Label>
    
    </td>
<center>
     <td align="Left">

        <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>

        &nbsp;

         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Name Is Required !" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
 </tr>
</center>
 <tr>
     <td class="auto-style1">

        <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
             Text="Blood Group:" Font-Bold="False"></asp:Label>
    
    </td>
<center>
     <td align="Left">

         <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="196px" BorderColor="#73C7C2" BorderStyle="Solid" style="font-weight: 700">
             <asp:ListItem>Select</asp:ListItem>
             <asp:ListItem Value="A+">A+</asp:ListItem>
             <asp:ListItem>B+</asp:ListItem>
             <asp:ListItem>AB+</asp:ListItem>
             <asp:ListItem>O+</asp:ListItem>
             <asp:ListItem>O-</asp:ListItem>
             <asp:ListItem>AB-</asp:ListItem>
             <asp:ListItem>B-</asp:ListItem>
             <asp:ListItem>A-</asp:ListItem>
         </asp:DropDownList>
         &nbsp;
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="DropDownList1" ErrorMessage="*Select Blood Group !" 
             ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </td>
 </tr>
 <tr>
     <td class="auto-style1">

        <asp:Label ID="Label5" runat="server" style="font-weight: 700"  
             Text="Gender:"></asp:Label>
    
    </td>
<center>
     <td align="Left">

         <asp:RadioButton ID="RadioButton1" runat="server" GroupName="GenderRadio" Checked="True"
             Text="Male" style="font-weight: 700" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RadioButton ID="RadioButton2" runat="server" GroupName="GenderRadio" 
             Text="Female" style="font-weight: 700" />

    </td>
 </tr>
 <tr>
    <td class="auto-style1">

        <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="Address:"></asp:Label>

    </td>
<center>
    <td align="Left">

        <asp:TextBox ID="TextBox2" runat="server" Height="57px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid" 
            TextMode="MultiLine"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Address Is Required !" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
 </tr>
 <tr>
    <td class="auto-style1">

        <asp:Label ID="Label4" runat="server" style="font-weight: 700" 
            Text="Phone No:"></asp:Label>

    </td>
<center>
    <td align="Left">

        <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid" 
            TextMode="Phone"></asp:TextBox>

        &nbsp;

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Phone No. Is Required !" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
 </tr>
 <tr>
     
    <td style="font-weight: 700" class="auto-style1">

        Email:</td>
<center>
    <td align="Left">

        <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid" ></asp:TextBox>

        &nbsp;

        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ErrorMessage="*Enter Valid Email !" ControlToValidate="TextBox4" 
            ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    </td>
 </tr>
 <tr>
    <td style="font-weight: 700" class="auto-style1">

        Username:</td>
<center>
    <td align="Left">

        <asp:TextBox ID="TextBox5" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid" ></asp:TextBox>

        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Username Is Required !" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>

    </td>
 </tr>
 <tr>
    <td style="font-weight: 700" class="auto-style1">

        Password:</td>
<center>
    <td align="Left">

        <asp:TextBox ID="TextBox6" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"  
            TextMode="Password"></asp:TextBox>

        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Password Is Required !" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>

    </td>
 </tr>
 <tr>
    <td style="font-weight: 700" class="auto-style1">

        Confirm Password:</td>
<center>
    <td align="Left">

        <asp:TextBox ID="TextBox7" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"  
            TextMode="Password"></asp:TextBox>

        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
            ErrorMessage="Password doesn't match !" ForeColor="Red"></asp:CompareValidator>
        <br />

    </td>
 </tr>
 <tr>
    <td style="font-weight: 700" class="auto-style1">

        &nbsp;</td>
    <td align="Left">

        <br />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/buttons/Submitbtn.png" onclick="ImageButton1_Click" Height="45px" Width="155px" style="text-align: center" />
        <br />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" Height="45px" ImageUrl="~/Images/buttons/Backbtn.png" OnClick="ImageButton2_Click" Width="155px" CausesValidation="False" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" ForeColor="Lime" Font-Size="Large" 
        style="font-weight: 700; text-align: center;"></asp:Label>

    </td>
 </tr>
</table>
</center>
</center>
</center>
</center>
</center>
</center>
</center>
</center>
    <br />
<center>
</center>

</asp:Content>
