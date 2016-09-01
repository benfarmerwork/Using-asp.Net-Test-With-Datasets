<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Result Text :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        Course ID :
        <asp:TextBox ID="txtCourseId" runat="server" style="width: 128px"></asp:TextBox>
        <asp:Button ID="btnGetCourse" runat="server" OnClick="btnGetCourse_Click" Text="Get Course Name" />
        <br />
        Course Name <asp:TextBox ID="txtCourseName" runat="server" ReadOnly="True" Width="275px"></asp:TextBox>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Learning_databasesConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
        <br />
        Search For Name By Age :
        <asp:TextBox ID="txtSearchAge" runat="server"></asp:TextBox>
        <asp:Button ID="SearchAge" runat="server" OnClick="SearchAge_Click" Text="Search" />
        <br />
        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
        <asp:Button ID="btnOpenQuery" runat="server" OnClick="btnOpenQuery_Click" Text="Open Datagrid" Height="21px" />
        <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <EditItemStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataGrid>
        <br />
        <br />
    </form>
</body>
</html>
