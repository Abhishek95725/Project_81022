<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeForm.aspx.cs" Inherits="Project_81022.EmployeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                <td>Name:</td>
                    <td><asp:TextBox ID="txtname" runat="server" placeholder="Enter your name"></asp:TextBox></td>
            </tr>
                  <tr>
                <td>City:</td> 
                <td><asp:TextBox ID="txtcity" runat="server" placeholder="Enter your city"></asp:TextBox></td>
            </tr>
                  <tr>
                <td>Age:</td>
                <td><asp:TextBox ID="txtage" runat="server" placeholder="Enter your age"></asp:TextBox></td>
            </tr>
                  <tr>
                <td>Salary:</td>
                <td><asp:TextBox ID="txtsalary" runat="server" placeholder="Enter your salary" ></asp:TextBox></td>
            </tr>
                  <tr>
                <td></td>
                <td><asp:button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" ></asp:button></td>
            </tr>
                <tr>
                    <td></td>
                    <td><asp:GridView ID="gvemployee" runat="server"></asp:GridView></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
