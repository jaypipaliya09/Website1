<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioButton CheckBox.aspx.cs" Inherits="RadioButton_And_CheckBox_RadioButton_CheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Radio Button and CheckBox</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
             <div class="col-md-6">
                    <asp:Label ID="lblCollege" runat="server" Text="College:" ToolTip="Select Your College"></asp:Label>
                    <hr />
                    <asp:RadioButton ID="rbDIET" runat="server" Text="DIET" CssClass="form-control" GroupName="college" ToolTip="DIET for Degree" EnableViewState="False"/><br />
                    <asp:RadioButton ID="rbDIETDS" runat="server" Text="DIETDS" CssClass="form-control" GroupName="college" ToolTip="DIETDS for Diploma Study" EnableViewState="False"/><br />
                    <asp:Button ID="btnClickMe1" runat="server" Text="Click" CssClass="btn btn-primary" ToolTip="Click On This" OnClick="btnClickMe1_Click" EnableViewState="False"/><br /><br />
                    <asp:Label ID="lblAnswer" runat="server" ToolTip="Your Response" Visible="False" EnableViewState="False"></asp:Label>

                </div>
                <div class="col-md-6">
                        <asp:Label ID="lblrbSelect" runat="server" Text="" ToolTip="Select Your Branch" Visible="false"></asp:Label>
                        <br />
                        <br />
                    <div id="blkrbDegree" runat="server" visible="false">
                        <asp:RadioButton ID="rbComp" runat="server" Text="Computer Engineering" CssClass="form-control" GroupName="branch" ToolTip="DIET for Degree" Visible="true" EnableViewState="False"/><br />
                        <asp:RadioButton ID="rbCivil" runat="server" Text="Civil Engineering" CssClass="form-control" GroupName="branch" ToolTip="DIET for Degree" Visible="true" EnableViewState="False"/><br />
                        <asp:RadioButton ID="rbElect" runat="server" Text="Electrical Engineering" CssClass="form-control" GroupName="branch" ToolTip="DIET for Degree" Visible="true" EnableViewState="False"/><br />
                        <asp:RadioButton ID="rbMech" runat="server" Text="Mechanical Engineering" CssClass="form-control" GroupName="branch" ToolTip="DIET for Degree" Visible="true" EnableViewState="False"/><br />
                    </div>

                    <div id="blkrbDiploma" runat="server" visible="false">
                         <asp:RadioButton ID="rbDComp" runat="server" Text="Diploma Computer Engineering" CssClass="form-control" GroupName="branch" ToolTip="DIET for Diploma" Visible="true" EnableViewState="False"/><br />
                         <asp:RadioButton ID="rbDCivil" runat="server" Text="Diploma Civil Engineering" CssClass="form-control" GroupName="branch" ToolTip="DIET for Diploma" Visible="true" EnableViewState="False"/><br />
                         <asp:RadioButton ID="rbDElect" runat="server" Text="Diploma Electrical Engineering" CssClass="form-control" GroupName="branch" ToolTip="DIET for Diploma" Visible="true" EnableViewState="False"/><br />
                         <asp:RadioButton ID="rbDMech" runat="server" Text="Diploma Mechanical Engineering" CssClass="form-control" GroupName="branch" ToolTip="DIET for Diploma" Visible="true" EnableViewState="False"/><br />
                    </div>
                    
                    <asp:Button ID="btnClickMe2" runat="server" Text="Submit" CssClass="btn btn-secondary" ToolTip="Click On This" OnClick="btnClickMe2_Click" Visible="false"/><pre>
                    </pre>
                </div>
                <hr />
               <div class="col-md-6">
                    <asp:Label ID="lblCollege2" runat="server" Text="For Select Multi Colleges" ToolTip="Select your College"></asp:Label>
                    <hr />
                   <asp:CheckBox ID="cbAll" runat="server" Text="Select All" ToolTip="For All Selection"  AutoPostBack="True" OnCheckedChanged="cbAll_CheckedChanged"/>&nbsp;&nbsp;
                   <asp:CheckBox ID="cbClear" runat="server" Text="Unselect All" ToolTip="For All Selection"   AutoPostBack="True" OnCheckedChanged="cbClear_CheckedChanged"/>&nbsp;&nbsp;
                   <asp:CheckBox ID="cbInverse" runat="server" Text="Inverse select All" ToolTip="For All Selection"   AutoPostBack="True" OnCheckedChanged="cbInverse_CheckedChanged"  /><br /><br />
                   <asp:CheckBox ID="cbDIET" runat="server" Text="DIET" CssClass="form-control" Tooltip="DIET for Degree" EnableViewState="False"/><br />
                   <asp:CheckBox ID="cbDIETDS" runat="server" Text="DIETDS" CssClass="form-control" ToolTip="DIETDS for Diploma Study" EnableViewState="False"/><br />
                   <asp:Button ID="btnClickMe3" runat="server" Text="Click" CssClass="btn btn-primary" ToolTip="Click On This" OnClick="btnClickMe3_Click" EnableViewState="False"/><br /><br />
                   <asp:Label ID="lblAnswer1" runat="server" Text="" ToolTip="Your Response" Visible="false"></asp:Label>    
               </div>
                <div class="col-md-6">
                    <asp:Label ID="lblcbSelect" runat="server" Text="" ToolTip="Select Your Branch" Visible="false"></asp:Label><br />
                    
                    <asp:CheckBox ID="cbAll1" runat="server" Text="Select All" ToolTip="For All Selection"   AutoPostBack="True" OnCheckedChanged="cbAll1_CheckedChanged" Visible="false"/>&nbsp;&nbsp;
                    <asp:CheckBox ID="cbClear1" runat="server" Text="Unselect All" ToolTip="For All Selection"   AutoPostBack="True" OnCheckedChanged="cbClear1_CheckedChanged" Visible="false"/>&nbsp;&nbsp;
                    <asp:CheckBox ID="cbInverse1" runat="server" Text="Inverse select All" ToolTip="For All Selection"   AutoPostBack="True" OnCheckedChanged="cbInverse1_CheckedChanged" Visible="false"/><br /><br />
                    <div id="blkDegree" runat="server" visible="false">
                         <asp:CheckBox ID="cbComp" runat="server" Text="Computer Engineering" CssClass="form-control" ToolTip="DIET for Degree" Visible="true" EnableViewState="False"/><br />
                         <asp:CheckBox ID="cbCivil" runat="server" Text="Civil Engineering" CssClass="form-control" ToolTip="DIET for Degree" Visible="true" EnableViewState="False"/><br />
                         <asp:CheckBox ID="cbElect" runat="server" Text="Electrical Engineering" CssClass="form-control" ToolTip="DIET for Degree" Visible="true" EnableViewState="False"/><br />
                         <asp:CheckBox ID="cbMech" runat="server" Text="Mechanical Engineering" CssClass="form-control" ToolTip="DIET for Degree" Visible="true" EnableViewState="False"/><br />
                    </div>
                    <div id="blkDiploma" runat="server" visible="false">
                         <asp:CheckBox ID="cbDComp" runat="server" Text="Diploma Computer Engineering" CssClass="form-control" ToolTip="DIET for Diploma" Visible="true" EnableViewState="False"/><br />
                         <asp:CheckBox ID="cbDCivil" runat="server" Text="Diploma Civil Engineering" CssClass="form-control" ToolTip="DIET for Diploma" Visible="true" EnableViewState="False"/><br />
                         <asp:CheckBox ID="cbDElect" runat="server" Text="Diploma Electrical Engineering" CssClass="form-control" ToolTip="DIET for Diploma" Visible="true" EnableViewState="False"/><br />
                         <asp:CheckBox ID="cbDMech" runat="server" Text="Diploma Mechanical Engineering" CssClass="form-control" ToolTip="DIET for Diploma" Visible="true" EnableViewState="False"/><br />
                    </div>
                    <asp:Button ID="btnClickMe4" runat="server" Text="Submit" CssClass="btn btn-secondary" ToolTip="Click On This" OnClick="btnClickMe4_Click" Visible="false"/><br /><br />
                </div>
        </div>
    </div>
    </form>
     <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
