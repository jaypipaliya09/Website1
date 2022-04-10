<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="SAS.aspx.cs" Inherits="Content_DUWebsite_SAS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMainContent" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2>Technical Clud</h2>
                <hr />
                <p >Main objective of this club is to promote and encourage student’s participation in various technical activities like developing project and working models, exploring new technologies, conducting workshops and expert lectures, coaching for different competitive exams, participating as well as organizing technical competitions, etc. Various satellite clubs currently active under this are:</p>
                <asp:Image runat="server" SkinID="SAC" ID="imgSac" AlternateText="Student Activity Center - SAC"/>
            </div>
            <div class="col-md-4">
                <dl>
                    <dt>ISTE Student's Chapter</dt><hr />
                    <dd>Indian Society for Technical Education - New Delhi, is a professional organization working in area of technical education. The major objective of ISTE is to assist and contribute to the development of top quality professional engineers and technicians needed by the industry through meaningful interactions among various technical institutions. Various activities are conducted round the year by students under this chapter, the major being Frolic – Institute’s annual technical festival organized in odd semesters every year.</dd>
                    <br />
                    <hr />
                    <dt>Robotics Club</dt><hr />
                    <dd>Robotics club provides platform to students across the disciplines to experiment and learn principles and practices in engineering through fun activities and robot design. Club is equipped with resources and currently offers three courses viz. Beginners’ course, Advance course and Application design using Robotics. Students are also encouraged to participate in various national and international competitions.</dd>
                </dl>
            </div>
             <div class="col-md-4">
                <dl>
                    <dt>GATE study Club</dt><hr />
                    <dd>Graduate Aptitude Test in Engineering (GATE) is an all India examination conducted jointly by IISc. and IITs on behalf of MHRD, Govt. of India. GATE is used as screening exam for admission to postgraduate programs, scholarships/assistantships during studies, recruitments in PSUs, etc. Branch wise complete one year coaching program is designed for GATE aspirants which starts from semester VI of engineering. Coaching is provided by faculties at the institute as well as experts from outside.</dd>
                    <br />
                    <hr />
                    <dt>Mobile and Wireless Technologies Club</dt><hr />
                    <dd>Mobile and Wireless Technologies Club (MWTC) works in affiliation to MWTC at GTU. Various workshops and expert lectures on mobile platforms, mobile and wireless technologies are arranged.</dd>
                </dl>
            </div>
        </div>
    </div>
</asp:Content>

