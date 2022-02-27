<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportForm.aspx.cs" Inherits="DocOnline.ReportForm" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="700px" Width="100%">
            <LocalReport ReportPath="Report1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="DocOnline.DataSet1TableAdapters.AppointmentTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_AppId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pid" Type="Int32" />
                <asp:Parameter Name="did" Type="Int32" />
                <asp:Parameter Name="AppDate" Type="String" />
                <asp:Parameter Name="AppTime" Type="Int32" />
                <asp:Parameter Name="Prec" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pid" Type="Int32" />
                <asp:Parameter Name="did" Type="Int32" />
                <asp:Parameter Name="AppDate" Type="String" />
                <asp:Parameter Name="AppTime" Type="Int32" />
                <asp:Parameter Name="Prec" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
                <asp:Parameter Name="Original_AppId" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
    </form>
</body>
</html>
