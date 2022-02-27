<%@ Page Title="Add Doctor" Language="C#" MasterPageFile="~/AddDocMaster.Master" AutoEventWireup="true" CodeBehind="AddDocDashboard.aspx.cs" Inherits="DocOnline.AddDocDashboard" %>
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
        .auto-style2 {
            height: 62px;
        }
        .auto-style3 {
            width: 244px;
        }
        .auto-style4 {
            height: 62px;
            }
        .auto-style5 {
            width: 268435488px;
        }
        .auto-style6 {
            width: 222px;
        }
        .auto-style7 {
            height: 62px;
            text-decoration: underline;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="title-style">Add Doctor Dashboard</h1></center>
    <center>
     <table class="doctable">
         <tr>
             <td>
                <table cellspacing="4" cellpadding="4" style="border-style: solid; border-color: #000000; width: 635px">
                    <tr>
                      <td class="auto-style1" style="text-align: right; font-weight: 700">
                     Doctor ID:
                      </td>
                      <td colspan="2" class="auto-style6">
                          <asp:Label ID="LabeleId" runat="server" Font-Bold="True"></asp:Label>
                      </td>                
                   </tr>
                    <tr>
                      <td class="auto-style1" style="text-align: right; font-weight: 700">
                          Doctor Name:
                      </td>
                      <td colspan="2" class="auto-style6">
                    <asp:TextBox ID="txtDoctorName" runat="server" Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox> 
                      </td>
                      <td class="auto-style5">

                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDoctorName" ErrorMessage="*Name Is Required !" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>

                      </td>                
                   </tr>
                    <tr>
                 <td class="auto-style1" style="text-align: right; font-weight: 700">
                     Doctor Type:
                 </td>
                <td colspan="2" class="auto-style6">
                    <asp:DropDownList ID="DDLDoctorType" runat="server" Width="190px" 
                        AutoPostBack="True" Height="27px" style="font-weight: 700" BorderColor="#73C7C2" BorderStyle="Solid" >
                     </asp:DropDownList>
                 </td>
                 <td class="auto-style5">

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                         ControlToValidate="DDLDoctorType" ErrorMessage="*Select the Doctor Type !" 
                         ForeColor="Red" InitialValue="Select" SetFocusOnError="True" style="font-weight: 700"></asp:RequiredFieldValidator>

                 </td>
            </tr>
            <tr>
                 <td class="auto-style1" style="text-align: right; font-weight: 700">
                     Doctor Gender:
                 </td>
                <td colspan="2" class="auto-style6">
                    <asp:RadioButton ID="RdButtonMale" runat="server" Text="Male" GroupName="RadioBtn" Checked="True" style="font-weight: 700; text-align: left"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RdButtonFemale" runat="server" Text="Female" GroupName="RadioBtn" style="font-weight: 700"/>
                 </td>
            </tr>
            <tr>
                 <td class="auto-style1" style="text-align: right; font-weight: 700">
                     Doctor Phone No:
                 </td>
                <td colspan="2" class="auto-style6">
                    <asp:TextBox ID="txtDoctorNo" runat="server"  Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
                 </td>
                 <td class="auto-style5">

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDoctorNo" ErrorMessage="*Phone No Is Required !" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>

                 </td>
            </tr>
            <tr>
                 <td class="auto-style1" style="text-align: right; font-weight: 700">
                     Doctor Age:
                 </td>
                <td colspan="2" class="auto-style6">
                    <asp:TextBox ID="txtDocAge" runat="server" Width="190px"  Height="27px" style="margin-left: 0px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
                 </td>
                 <td class="auto-style5">
                     <asp:RangeValidator ID="RangeValidator1" runat="server" 
                         ControlToValidate="txtDocAge" ErrorMessage="*Age Should be Between 25 To 65" 
                         ForeColor="Red" MaximumValue="65" MinimumValue="25" style="font-weight: 700; font-size: medium;"></asp:RangeValidator>

                 </td>
            </tr>
            <tr>
                 <td class="auto-style1" style="text-align: right; font-weight: 700">
                     Doctor Username:
                 </td>
                <td colspan="2" class="auto-style6">
                    <asp:TextBox ID="txtDocUsername" runat="server"  Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
                 </td>
                 <td class="auto-style5">

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDoctorName" ErrorMessage="*Username Is Required !" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>

                 </td>
            </tr>
            <tr>
                 <td class="auto-style1" style="text-align: right; font-weight: 700">
                     Doctor Password:
                 </td>
                <td colspan="2" class="auto-style6">
                    <asp:TextBox ID="txtDocPassword" runat="server"  Height="27px" Width="190px" BorderColor="#73C7C2" BorderStyle="Solid"></asp:TextBox>
                 </td>
                 <td class="auto-style5">

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDocPassword" ErrorMessage="*Password Is Required !" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>

                 </td>
            </tr>
            <tr>
                 <td class="auto-style3" colspan="2" style="text-align: right; font-weight: 700">
                     &nbsp;</td>
                 <td class="auto-style1" colspan="2" style="text-align: right; font-weight: 700">
                     &nbsp;</td>
            </tr>
            <tr>
                 <td class="auto-style4" colspan="2" style="font-weight: 700; text-align: right;">
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/buttons/AddDoctorBtn.png" onclick="ImageButton1_Click" Width="190px" />
                 </td>
                 <td class="auto-style2" colspan="2" style="font-weight: 700">
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/Images/buttons/DeleteDoctorbtn.png" Width="190px" onclick="ImageButton2_Click" style="text-align: right" CausesValidation="False" 
            />
                 </td>
            </tr>
            <tr>
                 <td class="auto-style7" colspan="4" style="font-weight: 700; text-align: center;">
                     Note: To Delete a doctor enter Doctor&#39;s name and phone, then press &quot;Delete Doctor&quot;</td>
            </tr>
               </table>
                 <br />
            </td>
         </tr>
     </table>
&nbsp;<asp:Label ID="Label1" runat="server" style="text-decoration: underline; font-weight: 700; font-size: x-large" Text="Doctors List"></asp:Label>
        <br /><br />
        <asp:Label ID="MessageLabel" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#33CC33"></asp:Label>
        <br />
        <asp:GridView ID="gridvDoc" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="DocId" HeaderText="Doctor Id" />
                <asp:BoundField DataField="DocName" HeaderText="Doctor Name" />
                <asp:BoundField DataField="Speciality" HeaderText="Doctor Speciality" />
                <asp:BoundField DataField="DocGender" HeaderText="Doctor Gender" />
                <asp:BoundField DataField="DocPhone" HeaderText="Doctor Phone No" />
                <asp:BoundField DataField="DocAge" HeaderText="Doctor Age" />
                <asp:BoundField DataField="DocUsername" HeaderText="Username" />
                <asp:BoundField DataField="DocPassword" HeaderText="Password" />
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
