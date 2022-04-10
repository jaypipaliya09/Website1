using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_DUWebsite_Library : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnservice_Click(object sender, EventArgs e)
    {
        divService.Visible = true;
        divMember.Visible = false;
        divDIET.Visible = false;
    }
    protected void btnMembership_Click(object sender, EventArgs e)
    {
        divService.Visible = false;
        divMember.Visible = true;
        divDIET.Visible = false;
    }
    protected void btnLibrary_Click(object sender, EventArgs e)
    {
        divService.Visible = false;
        divMember.Visible = false;
        divDIET.Visible = true;
    }
}