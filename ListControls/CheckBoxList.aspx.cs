using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListControls_CheckBoxList : System.Web.UI.Page
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
            if (cblOriginalList.Items.Contains(cblOriginalList.Items.FindByText(txtCountryName.Text.ToLower())))
            {
                lblError.Text = "Duplicate Value not allowed";
            }

            else if (cblOriginalList.Items.Contains(cblOriginalList.Items.FindByValue(txtCountryCode.Text)))
            {
                lblError.Text = "Duplicate Value not allowed";
            }
            else
            {
                cblOriginalList.Items.Add(li);
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
        if (cblOriginalList.SelectedIndex >= 0)
        {
            txtCountryName.Text = cblOriginalList.SelectedItem.Text.Trim();
            txtCountryCode.Text = cblOriginalList.SelectedValue.Trim();

            cblOriginalList.Items.Remove(cblOriginalList.Items.FindByText(txtCountryName.Text));
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
        if (cblOriginalList.SelectedIndex >= 0)
        {
            txt1CountryName.Text = cblOriginalList.SelectedItem.Text.Trim();
            txt1CountryCode.Text = cblOriginalList.SelectedValue.Trim();
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
        foreach (ListItem li in cblOriginalList.Items)
        {
            if (li.Selected == true)
            {
               cblCopyList.Items.Add(li);
            }

            else
            {
                lblDisplay.Text = "Kindly Select Country";

            }
        }
        for (int i = 0; i < cblOriginalList.Items.Count; i++)
        {
            if (cblOriginalList.Items[i].Selected)
            {
                lblDisplay.Text = "";
                cblOriginalList.Items.Remove(cblOriginalList.Items[i]);
                i--;
            }
        }

    }
    protected void btnMultiLeftToRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in cblOriginalList.Items)
        {
            cblCopyList.Items.Add(li);
        }
        cblOriginalList.Items.Clear();
    }
    protected void btnSingleRightToLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in cblCopyList.Items)
        {
            if (li.Selected == true)
            {
                cblOriginalList.Items.Add(li);
            }

            else
            {
                lblDisplay.Text = "Kindly Select Country";

            }
        }
        for (int i = 0; i < cblCopyList.Items.Count; i++)
        {
            if (cblCopyList.Items[i].Selected)
            {
                lblDisplay.Text = "";
                cblCopyList.Items.Remove(cblCopyList.Items[i]);
                i--;
            }
        }
    }
    protected void btnMultiRightToLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in cblCopyList.Items)
        {
            cblOriginalList.Items.Add(li);
        }
        cblCopyList.Items.Clear();
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {

        if (cblOriginalList.Items.Count == 0)
        {
            lblDisplay.Text = "Please Select Country";
        }
        foreach (ListItem li in cblOriginalList.Items)
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
            if (cblOriginalList.Items.Contains(cblOriginalList.Items.FindByText(txtCountryName.Text.ToLower())))
            {
                lblError.Text = "Duplicate Value not allowed";
            }

            

            else
            {
                for (int i = 0; i < cblOriginalList.Items.Count; i++)
                {
                    if (cblOriginalList.Items[i].Selected)
                    {
                        cblOriginalList.Items.Remove(cblOriginalList.Items[i]);
                        i--;
                    }
                }
                ListItem li = new ListItem();
                li.Text = txtCountryName.Text.ToLower();
                li.Value = txtCountryCode.Text;
                cblOriginalList.Items.Add(li);
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