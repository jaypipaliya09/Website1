<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownListaspx.aspx.cs" Inherits="ListControls_DropDownListaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDownList</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h1 align="center">DropDownList</h1><hr />
                <div>
                     <asp:Label ID="lblError" runat="server" Text="" ToolTip="Error Message or Success Message"></asp:Label>
                     <br /><br />
                </div>
            <div>
                <asp:Label ID="lblNewValue" runat="server" Text="New Value" ToolTip="Data of Country"></asp:Label>
                <br />
                <div>
                    <asp:Label ID="lblNewCountryName" runat="server" Text="Country Name :" ToolTip="Enter a name of country"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtCountryName" runat="server" ></asp:TextBox>
                    <br /><br />
                    <asp:Label ID="lblNewCountryCode" runat="server" Text="Country Code :" ToolTip="Enter a greater than zero number and it's maximum limit is 3 digit"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtCountryCode" runat="server" MaxLength="3" TextMode="Number" ></asp:TextBox><br /><br />
                    
                </div>
            </div>
            
            <div id="divOldValue" runat="server" visible="false">
                <asp:Label ID="lblOldValue" runat="server" Text="Old Value" ToolTip="Data of Country for change request"></asp:Label>
                <div>
                    <asp:Label ID="lblOldCountryName" runat="server" Text="Country Name :" ToolTip="Enter a name of country"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txt1CountryName" runat="server"></asp:TextBox>
                    <br /><br />
                    <asp:Label ID="lblOldCountryCode" runat="server" Text="Country Code :" ToolTip="Enter a greater than zero number and it's maximum limit is 3 digit"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt1CountryCode" runat="server" MaxLength="3" TextMode="Number"></asp:TextBox>
                    <br /><br />
                </div>
            </div>
            
            <div>
                <asp:Button ID="btnAdd" runat="server" Text="Add Item" OnClick="btnAdd_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRemove" runat="server" Text="Remove Item" OnClick="btnRemove_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnChange" runat="server" Text="Change Item" OnClick="btnChange_Click" visible="true"/>
                <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" visible="false" />&nbsp;&nbsp;&nbsp;&nbsp;
                <br /><br />
            </div>
            <hr />
            <div class="col-md-4">
                <asp:DropDownList ID="ddlOriginalList" runat="server" ViewStateMode="Enabled"  ></asp:DropDownList><br /><br />
                <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" /><br />
                <br />
                <asp:Label ID="lblDisplay" runat="server" ToolTip="Display all Record" ViewStateMode="Disabled"></asp:Label>
            </div>
            <div class="col-md-4" align="center">
                    <asp:Button ID="btnSingleLeftToRight" runat="server" Text=">" OnClick="btnSingleLeftToRight_Click" Width="39px" />&nbsp;&nbsp;|
                    <asp:Button ID="btnSingleRightToLeft" runat="server" Text="<" OnClick="btnSingleRightToLeft_Click" Width="39px" />
                    <br />
                    <br />
                    <asp:Button ID="btnMultiLeftToRight" runat="server" Text=">>" OnClick="btnMultiLeftToRight_Click" Width="50px" />&nbsp;&nbsp;|
                    <asp:Button ID="btnMultiRightToLeft" runat="server" Text="<<" OnClick="btnMultiRightToLeft_Click" Width="50px" />
              
                    
            </div>
            <div class="col-md-4">
                <asp:DropDownList ID="ddlCopyList" runat="server" ></asp:DropDownList>
            </div>
            </div>
        </div>
    </form>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
