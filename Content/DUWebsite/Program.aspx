<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="Program.aspx.cs" Inherits="Content_DUWebsite_Program" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMainContent" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <asp:Button runat="server" ID="btnBE" Text="Bechelor of Engineering (B.E)" ToolTip="B.Tech -- DIET" OnClick="btnBE_Click" ViewStateMode="Disabled"/>&nbsp;&nbsp;|&nbsp;&nbsp;
                <asp:Button runat="server" ID="btnME" Text="Master of Engineering (M.E)" ToolTip="M.Tech -- DIET" OnClick="btnME_Click" ViewStateMode="Disabled"/>
            </div>
            <br />
            <br />
        </div>
        <br />
    </div>
    <div class="container">
        <div class="row">
                <div class="col-md-6" runat="server" visible="true" id="divBE">
                    <table>
                        <tr>
                            <th>Sr.</th>
                            <th>Branch</th>
                            <th>Intake</th>

                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Computer Engineering</td>
                            <td>180</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Civil Engineering</td>
                            <td>120</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Electrical Engineering</td>
                            <td>60</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Mechanical Engineering</td>
                            <td>120</td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-6" runat="server" visible="false" id="divME">
                    <table>
                        <tr>
                            <th>Sr.</th>
                            <th>Branch</th>
                            <th>Intake</th>
                        </tr>
                       
                        <tr>
                            <td>1</td>
                            <td>Software Engineering (Computer Engineering)</td>
                            <td>18</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Structural Engineering (Civil Engineering)</td>
                            <td>18</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Electrical Engineering (Electrical Engineering)</td>
                            <td>18</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Thermal Engineering (Mechanical Engineering)</td>
                            <td>18</td>
                        </tr>
                    </table>
                </div>
            </div>
    </div>
</asp:Content>

