<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="AboutDU.aspx.cs" Inherits="Content_DUWebsite_AboutDU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMainContent" Runat="Server">
    <div class="contanier">
        <div class="row">
            <div class="col-md-12">
                <h2>About Darshan Institute of Engineering and Technology</h2>
                <hr />
                <p>
                    Darshan Institute of Engineering & Technology is a prominent institute offers a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in engineering. Our institute is Located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India.
                </p>
                <p>
                    The Institute is affiliated to the Gujarat Technological University and approved by the AICTE, New Delhi. The Institute was established in the year 2009, by Shree G.N.Patel Education & Charitable Trust.
                </p>
                <p>
                    Darshan is managed by the technical experienced & well-qualified management team, under the leadership of Dr. R.G. Dhamsaniya. From its inception, the college has grown steadily and is imparting quality technical education.
                </p>
                <p>
                    The Institute has well experienced, highly qualified and dedicated faculty for committed education. All head of the departments and senior faculties are reputed industrial consultants.
                </p>
                <p>
                    We, the team of Darshan perceive that for education to be consistently significant, it needs to be managed efficiently. The management team at Darshan drafts strategies and guidelines oversees its implementation and takes charge of the regulated administration together with long-term plans.
                </p>
                <br />
                <br /> 
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row" align="center">
            <div class="col-md-6">
                <h5>Affliated To</h5>
                <h6>GTU- Gujarat Technological University, Ahmedabad</h6>
                <hr />
                <asp:Image runat="server" id="imgGtu" ToolTip="GTU" AlternateText="GTU's Image" ImageUrl="~/Content/Images/GTU.png"/>
            </div>
            <div class="col-md-6">
                <h5>Affliated To</h5>
                <h6>All India Council for Technical Education (AICTE), New Delhi</h6>
                <hr />
                <asp:Image runat="server" id="imgAicte" ToolTip="AICTE" AlternateText="AICTE's Image" ImageUrl="~/Content/Images/AICTE.png"/>
            </div>
        </div>
    </div>
</asp:Content>

