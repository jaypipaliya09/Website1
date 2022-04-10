<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="WomenDevlopmentCell.aspx.cs" Inherits="Content_DUWebsite_WomenDevlopmentCell" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMainContent" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Women's Development Cell</h2>
            </div>
            <div class="col-md-6">
                <p>
                    <strong>A</strong>s per the directive of Gujarat Technological University, Darshan Institute Engineering & Technology had set up the Women’s Development Committee in March 2011. The objectives of the Women Development Committee are listed below:
                </p>
                <ul>
                    <li>To create social awareness to female staff members and girl students in the college about the relevant issues related to women.</li>
                    <li>To encourage the members to participate in the activities exclusively meant for their development as women.</li>
                    <li>To organize seminars, workshops for creating general awareness and orientation to students, teachers, non-teaching staff for their active and sustained participation in the activities of the Committee.</li>
                    <li>To promote the general well-being of female students, teaching and non-teaching female staff of the institute.</li>
                    <li>To inculcate social values in them by conducting community service activities.</li>
                    <li>To organize various types of training programmes and create awareness about self-employment schemes for the encouragement of self-reliance among women.</li>
                </ul><br />
                <p>The Women Development Committee (WDC) of the College is also acting as a Grievance Committee for the members to take care of any untoward actions against them if any.</p>
                <br />
                <hr />
                 <table>
                        <tr>
                            <th>Sr.</th>
                            <th>Member</th>
                            <th>Designation</th>

                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Dr. R. G. Dhamsaniya</td>
                            <td>Chairman & Principal - Degree</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Prof. G. B. Sanghani</td>
                            <td>Head of the Department - Computer Engineering</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Prof. D. B. Kagathara</td>
                            <td>Assistant Professor - Computer Engineering</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Dr. A. V. Gohel</td>
                            <td>Librarian</td>
                        </tr>
                    </table>
            </div>
            <div class="col-md-6" align="center">
                <br /><br /><br /><br />
                <asp:Image Id="imgWomen" SkinID="women" AlternateText="WDC Image" runat="server" Width="75%" Height="50%"/>
                <br />
            </div>
           
        </div>
    </div>
</asp:Content>

