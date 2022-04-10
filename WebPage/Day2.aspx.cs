using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Day2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        imgbtnDarshanUniversity.ImageUrl = "https://www.darshan.ac.in/Content/media/DU-logo.svg";
        img1DarshanUniversity.ImageUrl = "https://darshan.ac.in/U01/Slider/Slide_1.jpg?V=1";
        img2DarshanUniversity.ImageUrl = "https://darshan.ac.in/U01/Slider/Slide_2.jpg?V=1";
        img3DarshanUniversity.ImageUrl = "https://darshan.ac.in/U01/Slider/Slide_3.jpg?V=1";
        img4DarshanUniversity.ImageUrl = "https://darshan.ac.in/U01/Slider/Slide_4.jpg?V=1";
        img5DarshanUniversity.ImageUrl = "https://darshan.ac.in/U01/Slider/Slide_5.jpg?V=1";
        img6DarshanUniversity.ImageUrl = "https://darshan.ac.in/U01/Slider/Slide_6.jpg?V=1";
        hl1Home.Text="Home";
        hl2AboutUniversity.Text = "About University";
        hl3Courses.Text = "Courses Run by University";
        hl4Departments.Text = "Departments";
        hl5Staff.Text = "Staff Members";
        hl6News.Text = "News";
        hl7Contact.Text = "Contact";
        hl1Home.NavigateUrl = "#txtHome";
        hl2AboutUniversity.NavigateUrl="#txtAboutus";
        hl3Courses.NavigateUrl = "#txtCourses";
        hl4Departments.NavigateUrl = "#txtDepartments";
        hl5Staff.NavigateUrl = "#txtStaff";
        hl6News.NavigateUrl = "#txtNews";
        hl7Contact.NavigateUrl = "#txtContact";
        hl8Back.NavigateUrl = "#txtHome";

    }
    protected void imgbtnDarshanUniversity_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/WebPage/Day2.aspx");
    }

    protected void btnClickMe_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "" || txtEmail.Text == "" || txtnumber.Text == "")
        {
            lblMessage.Text = "Please Fill up all details";
        }

        else
        {
            lblMessage.Text = "Your Response has been recorded";
        }
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtnumber.Text = "";

    }

}