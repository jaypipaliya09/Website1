<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="VisionMission.aspx.cs" Inherits="Content_DUWebsite_VisionMission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMainContent" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <asp:Image runat="server" AlternateText="Vision Image " id="imgVision" SkinID="vision"/><br /><hr />
                <p>To be recognized as one of the finest institution in the country for its quality, commitment, and excellence in technical education.</p>
            </div>
            <div class="col-md-6">
                <asp:Image runat="server" AlternateText="Mission Image " id="imgMission" SkinID="mission"/><br /><hr />
                <ul>
                    <li>Center of excellence for technical education.</li>
                    <li>Leadership in human & social development through technical education.</li>
                    <li>Robust, affordable & sustainable solutions to the industries that have been derived from systematic reviews of best practices.</li>
                    <li>The prominent emblems of excellence in teaching, research, creative expression, and service to the community.</li>
                </ul>
            </div>
            
        </div>
    </div>
</asp:Content>

