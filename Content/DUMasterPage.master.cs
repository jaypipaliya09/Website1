using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_DUMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        ddlDepartment.Items.Add("Department");
        ddlDepartment.Items.Add("Computer");
        ddlDepartment.Items.Add("Civil");
        ddlDepartment.Items.Add("Mechanical");
        ddlDepartment.Items.Add("Electrical");
    }
    protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
    {
        string url = ddlDepartment.SelectedItem.Text;
        url = url.Replace(" ",string.Empty);
        Response.Redirect("~/Content/DUWebsite/"+url+".aspx");
    }
}
