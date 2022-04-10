<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="Library.aspx.cs" Inherits="Content_DUWebsite_Library" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMainContent" Runat="Server">
    <div class="container">
        <div class="row">
            <asp:Image Id="imgLibrary" SkinID="Library" runat="server" AlternateText="Library Image"/>
            <br />
            <div class="col-md-6">
                <p>
                    The Central Library of Darshan Institute is user-focused, innovative, and excellence driven. The Central Library spreads over to first and second floors with an area of 1735 sq.m. It is centrally air -conditioned with well -furnished library and CCTV surveillance. It has specialized collections of Books, Journals & other resources in Engineering and Technology, ranging from printed books,e-books, back volumes, CD\DVDs and Kindle e-readers, etc.The Library implemented D-Lib software (Library Software), which supports all housekeeping operations of the library. There is a separate digital library having 24 computers running on the high speed internet. The library system and staff is meticulously focused for providing comfortable, user friendly environment so as to enables learning and knowledge creation.
                </p>
                <br />
                <p>Also, the library has a membership of National Digital Library (NDL). More than 10 million documents are available in NDL including e-books, journal articles, video lectures etc. Library LAN has become a part of campus wise network, which has made it possible for the academic community of various departments to access information.</p>
                <p>Reading room of the library having total seating capacity of 200 students at a time. The library has over 25,000 volumes which are updated regularly by way of adding new collections in diverse formats in the form of text books, reference books, reports, proceedings, abstracts & indexes, encyclopedias, data books, standards (National & International) journals, Audio Visual resources, CDs, educational videos and thesis/reports.</p>
                <p>It has departmental libraries in all the departments, thus catering to the needs of Undergraduate, Post Graduate students and faculty.</p>
            </div>
            <div class="col-md-6" align="center">
                 <asp:Button runat="server" ID="btnservice" Text="Services" ToolTip="Service -- Library" OnClick="btnservice_Click" ViewStateMode="Disabled"/>&nbsp;&nbsp;|
                <asp:Button runat="server" ID="btnMembership" Text="Organizational Membership" ToolTip="Membership -- Library" OnClick="btnMembership_Click" ViewStateMode="Disabled"/>&nbsp;&nbsp;|
                <asp:Button runat="server" ID="btnLibrary" Text="DIET Library Membership" ToolTip="Library Membership -- Library" OnClick="btnLibrary_Click" ViewStateMode="Disabled"/>&nbsp;&nbsp;<br /><br />
            </div>
            <div class="row">
                <div runat="server" class="col-md-6" visible ="true" id="divService">
                    <ol type="1">
                        <li>Circulation Services</li>
                        <li>Photocopy Service</li>
                        <li>Document Scan Service</li>
                        <li>Reference service / Referral Service</li>
                        <li>Current Awareness Service</li>
                        <li>Document Delivery Service</li>
                        <li>Resource Sharing</li>
                        <li>Magazine/Journal Content Service: Content Pages provided in hard copy and soft copy by e-mail to registered users.</li>
                        <li>Amazon Kindle E-reader: Kindle device is issue for One Week to all Students and Staff of the college.</li>
                        <li>Video Lecture Collection: Video lectures categories are…. TED talks, Let’s Talk English speaking, Interview & Career, Motivational Speakers, Time Management, Health & Yoga, BBC, National Geography, Scientific Movie and many more.(Updated regularly)</li>
                        <li>Book-Talk Activity (For Non-technical Book): Once in a month library organizes Book-Talk for enhancement of reading among students and staff.</li>
                        <li>Book-Review Publication: Every month Book-Review of non-technical book is published in Our Diet E-Newsletter.</li>
                        <li>Access and copy of CD/DVD</li>
                        <li>Online Access to E-resources</li>
                        <li>Newspapers Clipping Service</li>
                        <li>Back Dated Magazines Circulation</li>
                        <li>New Arrivals Display</li>
                        <li>Reading Room -Discussion room-Reference Section… Facility for Students & Staff.</li>
                        <li>Library service available on Facebook and by e-mail….free for all.
                            (It Includes Important G.K. News, Current Affairs materials, Technical News, list of important Websites, etc.)</li>
                        <li>Reservation Facility</li>
                        <li>Overnight issue of Reference books</li>
                        <li>Library Orientation Program for New Students: Library orientation makes library users aware of the library and the services it offers. Library orientation educates users regarding general use of the library.</li>
                        <li>Latest News/Articles of Competitive Exam Related magazines send regularly every month to Library Users by e-mail.</li>
                    </ol>
                </div>
                <div runat="server" class="col-md-6" visible="false" id="divMember">
                        <asp:Image runat="server" ID="imgL1" SkinId="Member1" AlternateText="Missing Image"/>   
                        <h3>British Counsil Library - Ahmedabad</h3><br />
                        <p >Darshan Institute of Engineering & Techology is an institution member of British Council Library - Ahmedabad. The library has has over 20,000 books, DVDs, magazines and newspapers. You can browse through its full collection online or you can visit the library Tuesday to Sunday.</p><hr />
                        <asp:Image runat="server" ID="imgL2" SkinId="Member2" AlternateText="Missing Image"/>
                        <h3>DELNET</h3><br />
                        <p>Darshan Institute of Engineering & Techology is also a member of DELNET. DELNET has been established in 1988 by Govenment of India with the prime objective of promoting resource sharing among the libraries through the development of a network of libraries. It aims to collect, store, and disseminate information besides offering computerised services to users, to coordinate efforts for suitable collection development and also to reduce unnecessary duplication wherever possible.</p>
                </div>
                <div class="col-md-6" runat="server" visible="false" id="divDIET">
                    <h3>DIET Library Membership is available for </h3><br /><hr />
                    <ol type="1">
                        <asp:DataList>
                            <dt>Alumni Members</dt>
                            <dd>All Alumni of Darshan Institute of Engineering & Technology, Rajkot can become members of the Central Library on request.</dd>
                            <dt>Services Offered</dt>
                            <dd>Alumni and individual members can use the following services any time during library hours:
                                <ul>
                                    <li>Reference and consultation</li>
                                    <li>Borrowing of 2 books for 28 days, 1 magazine (from back issues) for 14 days and 1 bound volume of magazines for 14 days.</li>
                                    <li>Non-book materials (CD/DVD) access-copy in library</li>
                                    <li>Internet access to electronic resources</li>
                                </ul>
                            </dd>
                        </asp:DataList>
                    </ol>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

