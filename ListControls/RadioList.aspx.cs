using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListControls_RadioList : System.Web.UI.Page
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
            if (rblOriginalList.Items.Contains(rblOriginalList.Items.FindByText(txtCountryName.Text.ToLower())))
            {
                lblError.Text = "Duplicate Value not allowed";
            }

            else if (rblOriginalList.Items.Contains(rblOriginalList.Items.FindByValue(txtCountryCode.Text)))
            {
                lblError.Text = "Duplicate Value not allowed";
            }
            else
            {
                rblOriginalList.Items.Add(li);
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
        if (rblOriginalList.SelectedIndex >= 0)
        {
            txtCountryName.Text = rblOriginalList.SelectedItem.Text.Trim();
            txtCountryCode.Text = rblOriginalList.SelectedValue.Trim();

            rblOriginalList.Items.Remove(rblOriginalList.Items.FindByText(txtCountryName.Text));
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
        if (rblOriginalList.SelectedIndex >= 0)
        {
            txt1CountryName.Text = rblOriginalList.SelectedItem.Text.Trim();
            txt1CountryCode.Text = rblOriginalList.SelectedValue.Trim();
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
        foreach (ListItem li in rblOriginalList.Items)
        {
            if (li.Selected == true)
            {
                rblCopyList.Items.Add(li);
                
            }
            else
            {
                lblDisplay.Text = "Kindly Select Country";

            }
        }
        for (int i = 0; i < rblOriginalList.Items.Count; i++)
        {
            
            if (rblOriginalList.Items[i].Selected)
            {
                lblDisplay.Text = "";
                rblOriginalList.Items.Remove(rblOriginalList.Items[i]);
                i--;
            }
        }

    }
    protected void btnMultiLeftToRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in rblOriginalList.Items)
        {
            rblCopyList.Items.Add(li);
        }
        rblOriginalList.Items.Clear();
    }
    protected void btnSingleRightToLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in rblCopyList.Items)
        {
            if (li.Selected == true)
            {
                rblOriginalList.Items.Add(li);
                
            }
            else
            {
                lblDisplay.Text = "Kindly Select Country";

            }
        }
        for (int i = 0; i < rblCopyList.Items.Count; i++)
        {
            if (rblCopyList.Items[i].Selected)
            {
                lblDisplay.Text = "";
                rblCopyList.Items.Remove(rblCopyList.Items[i]);
                i--;
            }
        }
    }
    protected void btnMultiRightToLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in rblCopyList.Items)
        {
            rblOriginalList.Items.Add(li);
        }
        rblCopyList.Items.Clear();
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {

        if (rblOriginalList.Items.Count==0)
        {
            lblDisplay.Text = "Please Select Country";
        }

        else {
            foreach (ListItem li in rblOriginalList.Items)
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
        

    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        btnEdit.Visible = false;
        btnChange.Visible = true;
        if (txtCountryName.Text != "" && txtCountryCode.Text != "" && txtCountryCode.Text != "0")
        {
            if (rblOriginalList.Items.Contains(rblOriginalList.Items.FindByText(txtCountryName.Text.ToLower())))
            {
                lblError.Text = "Duplicate Value not allowed";
            }

            

            else
            {
                for (int i = 0; i < rblOriginalList.Items.Count; i++)
                {
                    if (rblOriginalList.Items[i].Selected)
                    {
                        rblOriginalList.Items.Remove(rblOriginalList.Items[i]);
                        i--;
                    }
                }
                ListItem li = new ListItem();
                li.Text = txtCountryName.Text.ToLower();
                li.Value = txtCountryCode.Text;
                rblOriginalList.Items.Add(li);
            }

            txt1CountryName.Text = "";
            txt1CountryCode.Text = "";
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
}