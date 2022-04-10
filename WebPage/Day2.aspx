<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Day2.aspx.cs" Inherits="Day2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My College</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <style>
        h1{
            color:seagreen;
            text-shadow: 2px 2px 5px seagreen;
        }
        h2{
            color:forestgreen;
            text-shadow: 1px 1px 3px;
        }
        
        .hw:visited{
            color:Purple;
        }
        .hw:hover{
            color:red;
        }
        #hl8Back{
            padding-top:400px;
            position:fixed;
            
        }
    </style>
</head>
<body>
     <div class="navbar-toggler-icon">
         
         <asp:HyperLink CssClass="hw" ID="hl8Back" runat="server" ToolTip="Back To Top">
             <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
            </svg>

        </asp:HyperLink>
     </div>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 align="center" id="txtHome">Darshan University</h1>
                <hr />
            </div>
            <div class="col-md-4">
                <asp:ImageButton Id="imgbtnDarshanUniversity" runat="server" AlternateText="Darshan Logo Image" Tooltip="Darshan University" OnClick="imgbtnDarshanUniversity_Click"/>
                  
            </div>
            
            <div class="col-md-8" style="color:red;">
                <br />
                <asp:HyperLink CssClass="hw" ID="hl1Home" runat="server" ToolTip="Home Section" ></asp:HyperLink>&nbsp;&nbsp;|
                <asp:HyperLink CssClass="hw" ID="hl2AboutUniversity" runat="server" ToolTip="Aboutus Section"></asp:HyperLink>&nbsp;&nbsp;|
                <asp:HyperLink CssClass="hw" ID="hl3Courses" runat="server" ToolTip="Courses Section"></asp:HyperLink>&nbsp;&nbsp;|
                <asp:HyperLink CssClass="hw" ID="hl4Departments" runat="server" ToolTip="Departments Section"></asp:HyperLink>&nbsp;&nbsp;|
                <asp:HyperLink CssClass="hw" ID="hl5Staff" runat="server" ToolTip="Staff Section"></asp:HyperLink>&nbsp;&nbsp;|
                <asp:HyperLink CssClass="hw" ID="hl6News" runat="server" ToolTip="News Section"></asp:HyperLink>&nbsp;&nbsp;|
                <asp:HyperLink CssClass="hw" ID="hl7Contact" runat="server" ToolTip="Contactus Section"></asp:HyperLink>
               
            </div>
                <pre>

                </pre>
                <asp:Image Id="img1DarshanUniversity" runat="server" AlternateText="Campus Image" ToolTip="Campus"/> 
                <pre>

                </pre>
                <h2 id="txtAboutus">About University</h2>
                <pre>

                </pre>
                <p align="justify">
                    Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).
                </p>
                <br />
                <p align="justify">
                    From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.
                </p>


                <asp:Image Id="img2DarshanUniversity" runat="server" AlternateText="Darshan University" ToolTip="Mechanical Workshop"/>
                <pre>

                </pre>

                <h2 id="txtCourses">Courses Run by University</h2>
                <pre>

                </pre>

                <dl>
                    <dt>School of Management</dt>
                        <dd>In Management, Under Graduation and Post Graduation</dd><br />
                    <dt>School of Computer Science</dt>
                        <dd>In Computer Science, B.TEch, B.Tech with Artificial Intelligence, Cyber Security, B.C.A, M.Tech, B.C.A, Ph.D</dd><br />
                    <dt>School of Science</dt>
                        <dd>In Science, Under Graduation, Post Graduation and Ph.D</dd><br />
                    <dt>School of Diploma Engineering</dt>
                        <dd>In Diploma Engineering, Computer, Civil, Mechanical, Electrical</dd><br />
                    <dt>School of Engineering</dt>
                        <dd>In Engineering, Computer, Civil, Mechanical, Electrical</dd>
                </dl>


                <asp:Image Id="img3DarshanUniversity" runat="server" AlternateText="DarshanUniversity" ToolTip="Electrical Workshop"/>
                <pre>

                </pre>

                <h2 id="txtDepartments">Departments</h2>
                <pre>

                </pre>

                <ul>
                    <li>Computer Science</li>
                    <li>Mechanical Engineering</li>
                    <li>Electrical Engineering</li>
                    <li>Civil Engineering</li>
                    <li>Management School</li>
                    <li>Science School</li>
                </ul>


                <asp:Image Id="img4DarshanUniversity" runat="server" AlternateText="DarshanUniversity" ToolTip="Power Consumption"/>
                <pre>

                </pre>

                <h2 id="txtStaff">Staff Members</h2>
                <pre>

                </pre>

                <p align="justify">
                    In any industry where the people behind a company are as important as the company itself, you’re likely to find a kind of expanded “about” page that includes information on individual employees. “Meet the Team” pages are popular among web design and other creative firms, but are also found on sites within various other industries. These pages are a valuable addition to any site where human contact is an important part of the industry. It adds a personal touch to the company and can lend trust to visitors.
                </p>
                <p align="justify">
                    There’s suddenly faces behind the names, and it becomes a “real” company to the visitor, rather than just another website. This builds credibility for many, especially considering how concerned many people are with online scams and phishing schemes. Adding information to a website on a company’s key employees is a simple but effective way to make that company stand out in the mind of its prospective clients. Below are a handful of trends and some interesting examples of “Meet the Team” pages.
                </p>


                <asp:Image Id="img5DarshanUniversity" runat="server" AlternateText="DarshanUniversity" ToolTip="Computer Workshop"/>
                <pre>

                </pre>

                <h2 id="txtNews">News</h2>
                <pre>

                </pre>
                <p align="justify">
                    Shree G. N. Patel Education and Charitable Trust have an enthusiastic desire to start varied institutes in the name of Darshan University which offers a broad slate of academic programs and professional courses due course of time like Degree Engineering, Diploma Engineering & Master of Engineering. The institute had acquired recognition in the region of Saurashtra as the hub of providing excellent education in the field of professional courses like Engineering and Technology.
                </p>
                <p align="justify">
                    The primitive purpose of the institute is to offer a progressive, interdisciplinary, hands-on education system. Institute pivotal motive is to prepare students with the breadth and depth of knowledge to become “pillars of the globalized evolution.” The aim of our Management team is to focalize on one kernel of gravity: the people who are committed to making the globe a better place ethically as well as educationally.
                </p>

                <asp:Image Id="img6DarshanUniversity" runat="server" AlternateText="DarshanUniversity" ToolTip="CivilWorkshop"/>
                <pre>

                </pre>
                <h2 id="txtContact">Contact us</h2>
                <pre>

                </pre>
                <div class="col-md-6">
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label><hr />
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ToolTip="Enter Your Full Name" ></asp:TextBox><br /><br />          
                        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><hr />
                        <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control" Tooltip="Enter Your Gmail Address"></asp:TextBox><br /><br />
                        <asp:Label ID="lblNumber" runat="server" Text="Mobile Number:"></asp:Label><hr />
                        <asp:TextBox ID="txtnumber" runat="server"   CssClass="form-control" Tooltip="Enter Your Mobile Number"></asp:TextBox><br /><br />
                        <asp:Button ID="btnClickMe" runat="server" Text="Submit" ToolTip="Send Your Response" OnClick="btnClickMe_Click" CssClass="btn btn-success" EnableViewState="False"/>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" ToolTip="Remove Your Response" OnClick="btnCancel_Click" CssClass="btn btn-danger" EnableViewState="False"/><br />
                        <asp:Label ID="lblMessage" runat="server" Text="" ></asp:Label>
                        <hr /> 
                </div>
                <div class="col-md-6">
                    <br />
                    <br />
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d236029.38100822602!2d70.65316105978866!3d22.430566000000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x28dc6eea8324e9d2!2sDarshan+Institute+of+Engineering+%26+Technology!5e0!3m2!1sen!2sin!4v1461218705004" width="100%" height="350" frameborder="0" style="border: 0" allowfullscreen=""></iframe>
                </div>
        </div> 
    </div>
    </form>
   <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>

