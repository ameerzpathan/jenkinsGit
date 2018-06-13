<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculatorPage.aspx.cs" Inherits="Calculator.Web.CalculatorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Numerator"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNumerator" runat="server"></asp:TextBox>
        <br />
    
    </div>
        <asp:Label ID="Label2" runat="server" Text="Denominator"></asp:Label>
&nbsp;<asp:TextBox ID="txtDenominator" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Result"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
        </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDivide" runat="server" Text="Divide" />
    </form>
</body>
</html>
