<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Practical 1</title>
    <style>
        table{
            border-radius:5px;
        }
        table,td,th{
            border:2px dotted black;
            align-content:center
        }
        body{
            background-color: whitesmoke
        }

        .c1:hover{
            background-color:violet
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1 align="center">Simple Calculator</h1>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <asp:Table ID="Table1" runat="server" Height="186px" Width="425px" align="center">
                        <asp:TableRow>
                            <asp:TableHeaderCell>
                                 <h4>Enter a First Number</h4>
                            </asp:TableHeaderCell>
                            <asp:TableCell>
                                 <asp:Textbox ID="txtNo1" runat="server" TextMode="Number"></asp:Textbox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableHeaderCell>
                                 <h4>Enter a Second Number</h4>
                            </asp:TableHeaderCell>
                            <asp:TableCell>
                                 <asp:Textbox ID="txtNo2" runat="server" TextMode="Number"></asp:Textbox>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableHeaderCell>
                                <h4>Answer</h4>
                            </asp:TableHeaderCell>
                            <asp:TableCell>
                                  <asp:Label ID="lblAnswer" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                
                            <asp:TableCell>
                                 <asp:Button ID="btnAdd" runat="server" Text="+" OnClick="btnAdd_Click" Height="50px" Width="70px" CssClass="c1"/>&nbsp;&nbsp;&nbsp;
                                 <asp:Button ID="btnSub" runat="server" Text="-" OnClick="btnSub_Click" Height="50px" Width="70px" CssClass="c1"/>
                            </asp:TableCell>
                            <asp:TableCell RowSpan="2">
                                   <asp:Button ID="btnMod" runat="server" Text="%" OnClick="btnMod_Click" style="margin-left: 48px" Height="50px" Width="100px" CssClass="c1"/>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                  <asp:Button ID="btnMul" runat="server" Text="*" OnClick="btnMul_Click" Height="50px" Width="70px" CssClass="c1"/>&nbsp;&nbsp;&nbsp;
                                  <asp:Button ID="btnDiv" runat="server" Text="/" OnClick="btnDiv_Click" Height="50px" Width="70px" CssClass="c1"/>
                            </asp:TableCell> 
                        </asp:TableRow>
        </asp:Table>
                </div>
            </div>
        </div>
    </form>
    
</body>
</html>
