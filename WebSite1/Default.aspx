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
        <br />
        <br />
        Course ID :
        <asp:TextBox ID="txtCourseId" runat="server" style="width: 128px"></asp:TextBox>
        <asp:Button ID="btnGetCourse" runat="server" OnClick="btnGetCourse_Click" Text="Get Course Name" />
        <br />
        Course Name <asp:TextBox ID="txtCourseName" runat="server" ReadOnly="True" Width="275px"></asp:TextBox>
    </div>
    </form>
</body>
</html>
