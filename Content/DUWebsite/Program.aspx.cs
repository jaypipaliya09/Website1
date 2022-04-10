using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_DUWebsite_Program : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnBE_Click(object sender, EventArgs e)
    {
        divBE.Visible = true;
        divME.Visible = false;
    }
    protected void btnME_Click(object sender, EventArgs e)
    {
        divBE.Visible = false;
        divME.Visible = true;
    }
}