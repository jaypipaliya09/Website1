using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListControls_DropDownListaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {

        if (txtCountryName.Text != "" && txtCountryCode.Text != "" && txtCountryCode.Text != "0")
        {
            lblError.Text = "Record inserted sucessfully";
            ListItem li = new ListItem();
            li.Text = txtCountryName.Text.ToLower();
            li.Value = txtCountryCode.Text;
            if (ddlOriginalList.Items.Contains(ddlOriginalList.Items.FindByText(txtCountryName.Text.ToLower())))
            {
                lblError.Text = "Duplicate Value not allowed";
            }
            else if (ddlOriginalList.Items.Contains(ddlOriginalList.Items.FindByValue(txtCountryCode.Text)))
            {
                lblError.Text = "Duplicate Value not allowed";
            }

            else
            {
                ddlOriginalList.Items.Add(li);
            }
            txtCountryName.Text = "";
            txtCountryCode.Text = "";


        }

        else if (txtCountryName.Text == "" && txtCountryCode.Text == "")
        {
            lblError.Text = "Please Enter a valid input";
        }

        else
        {

            if (txtCountryCode.Text == "" ||  txtCountryCode.Text == "0")
            {
                lblError.Text = "Please Enter a Country code";
            }

            else
            {
                lblError.Text = "Please Enter a Country Name";
            }
        }


    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        if (ddlOriginalList.SelectedIndex >= 0)
        {
            txtCountryName.Text = ddlOriginalList.SelectedItem.Text.Trim();
            txtCountryCode.Text = ddlOriginalList.SelectedValue.Trim();

            ddlOriginalList.Items.Remove(ddlOriginalList.Items.FindByText(txtCountryName.Text));
        }

        else
        {
            lblDisplay.Text = "Kindly Select Country";
        }

        txtCountryName.Text = "";
        txtCountryCode.Text = "";
    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        if (ddlOriginalList.SelectedIndex >= 0)
        {
            txt1CountryName.Text = ddlOriginalList.SelectedItem.Text.Trim();
            txt1CountryCode.Text = ddlOriginalList.SelectedValue.Trim();
            btnEdit.Visible = true;
            btnChange.Visible = false;
            divOldValue.Visible = true;

        }

        else
        {
            lblDisplay.Text = "Kindly Select Country";
        }

    }
    protected void btnSingleLeftToRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in ddlOriginalList.Items)
        {
            if (li.Selected == true)
            {
                ddlCopyList.Items.Add(li);
                
            }
           
           
        }
        for (int i = 0; i < ddlOriginalList.Items.Count; i++)
        {
            if (ddlOriginalList.Items[i].Selected)
            {
                
                ddlOriginalList.Items.Remove(ddlOriginalList.Items[i]);
                i--;
                
            }
        }

    }
    protected void btnMultiLeftToRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in ddlOriginalList.Items)
        {
            ddlCopyList.Items.Add(li);
        }
        ddlOriginalList.Items.Clear();
    }
    protected void btnSingleRightToLeft_Click(object sender, EventArgs e)
    {
        ddlOriginalList.ClearSelection();
        foreach (ListItem li in ddlCopyList.Items)
        {
            if (li.Selected == true)
            {
                ddlOriginalList.Items.Add(li);
            }

            
            
        }
        for (int i = 0; i < ddlCopyList.Items.Count; i++)
        {
            if (ddlCopyList.Items[i].Selected)
            {
                
                ddlCopyList.Items.Remove(ddlCopyList.Items[i]);
                i--;
            }
        }
    }
    protected void btnMultiRightToLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in ddlCopyList.Items)
        {
            ddlOriginalList.Items.Add(li);
        }
        ddlCopyList.Items.Clear();
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        if (ddlOriginalList.Items.Count == 0)
        {
            lblDisplay.Text = "Please Select Country";
        }
        foreach (ListItem li in ddlOriginalList.Items)
        {

            if (li.Selected == true)
            {
                lblDisplay.Text += "<strong>" + li.Value.Trim() + " - " +
                                  li.Text.Trim() + "</strong><br/>";
            }
            else
            {
                lblDisplay.Text += li.Value.Trim() + " - " +
                                  li.Text.Trim() + "<br/>";
            }
        }

    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        btnEdit.Visible = false;
        btnChange.Visible = true;
        if (txtCountryName.Text != "" && txtCountryCode.Text != "" && txtCountryCode.Text != "0")
        {
            if (ddlOriginalList.Items.Contains(ddlOriginalList.Items.FindByText(txtCountryName.Text.ToLower())))
            {
                lblError.Text = "Duplicate Value not allowed";
            }
            

            else
            {
                for (int i = 0; i < ddlOriginalList.Items.Count; i++)
                {
                    if (ddlOriginalList.Items[i].Selected)
                    {
                        ddlOriginalList.Items.Remove(ddlOriginalList.Items[i]);
                        i--;
                    }
                }
                ListItem li = new ListItem();
                li.Text = txtCountryName.Text.ToLower();
                li.Value = txtCountryCode.Text;
                ddlOriginalList.Items.Add(li);
            }

            txt1CountryName.Text = "";
            txt1CountryCode.Text = "";
            txtCountryName.Text = "";
            txtCountryCode.Text = "";
        }

        else if (txtCountryName.Text == "" && txtCountryCode.Text == "" )
        {
            lblError.Text = "Please Enter a valid input";
        }

        else
        {

            if (txtCountryCode.Text == "" ||  txtCountryCode.Text == "0")
            {
                lblError.Text = "Please Enter a Country code";
            }

            else
            {
                lblError.Text = "Please Enter a Country Name";
            }
        }


    }
}