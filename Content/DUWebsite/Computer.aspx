<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="Computer.aspx.cs" Inherits="Content_DUWebsite_Computer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMainContent" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Computer Engineering Department</h2><br />
                <h3>About Department</h3><hr /><br />
                <p><strong>C</strong>omputer engineer, also known as a software engineer, is responsible for designing, developing, testing and evaluating the software that make our computers work. This involves designing and coding of new programs and applications to meet the needs of a business or an individual. A computer engineer may also be responsible for constructing and managing on organization's computer system.</p><br />
                <p>Computer Engineering Department @Darshan is highly reputed in academics and industry. it is well known for its integrity, faculties, placement, infrastructure, and industry linkage nad apps development. Environment of the department is friendly and professional. Students can access resources any time,faculties are available round the clock. In a nutshell, it's a dream place for study and holistic development.</p>
            </div>
            <div class="col-md-6">
                <h3>ASWDC</h3><hr /><br />
                <div class="col-md-3">
                    <asp:Image runat="server" Id="imgASWDC" SkinID="aswdc" AlternateText="ASWDC - Image"/>
                </div>
                <p>The department is proud to announce its <u>ASWDC - Apps, Software & Website Development Center</u> . The center fulfills software & website requirements of the College. Some of the developed programs are DLib – Darshan Library Management Software, TTMS – Time Table Management Software, Fees Collection Software, Attendance Manager, etc. A team of faculties and students has developed iPhone, Android and Windows APPS for library, Students details for parents (DParent) and Engineering Admission (ACPC).</p>
                
            </div>
            <div class="col-md-6">
                <h3>Post Graduate Research Centers</h3><hr /><br />
                <p>The department has started the course Master of Computer Engineering from the year 2013 with the aim of encouraging the research activities in core computing and in application projects.</p><br />
                <p>Research activities in diverse areas will offer students a wide range of opportunities to gain experience while completing requirements for advanced degrees. Significant computational facilities, networks, and other resources are available to support student research.</p>
            </div>
        </div>
    </div>
</asp:Content>

