using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Day3_ListControl : System.Web.UI.Page
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
            if(lstbOriginalList.Items.Contains(lstbOriginalList.Items.FindByText(txtCountryName.Text.ToLower())))
            {
                lblError.Text="Duplicate Value not allowed";

                
            }

            else if (lstbOriginalList.Items.Contains(lstbOriginalList.Items.FindByValue(txtCountryCode.Text)))
            {
                lblError.Text = "Duplicate Value not allowed";
            }
            
            else
            {
                lstbOriginalList.Items.Add(li);
            }
            txtCountryName.Text="";
            txtCountryCode.Text="";

            
        }

        else if(txtCountryName.Text == "" && txtCountryCode.Text == "")
        {
            lblError.Text = "Please Enter a valid input";
        }

        else
        {
           
            if (txtCountryCode.Text == "" || txtCountryCode.Text == "0")
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
       
        

        if (lstbOriginalList.SelectedIndex >= 0)
        {
            txtCountryName.Text = lstbOriginalList.SelectedItem.Text.Trim();
            txtCountryCode.Text = lstbOriginalList.SelectedValue.Trim();

            lstbOriginalList.Items.Remove(lstbOriginalList.Items.FindByText(txtCountryName.Text));
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
        
        
        if(lstbOriginalList.SelectedIndex >=0)
        {
            txt1CountryName.Text = lstbOriginalList.SelectedItem.Text.Trim();
            txt1CountryCode.Text = lstbOriginalList.SelectedValue.Trim();
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
        foreach(ListItem li in lstbOriginalList.Items)
        {
            if (li.Selected == true)
            {
                lstbCopyList.Items.Add(li);
            }

            else
            {
                lblDisplay.Text = "Kindly Select Country";

            }
        }
        for (int i = 0; i < lstbOriginalList.Items.Count; i++ )
        {
            if (lstbOriginalList.Items[i].Selected)
            {
                lblDisplay.Text = "";
                lstbOriginalList.Items.Remove(lstbOriginalList.Items[i]);
                i--;
            }
        }
        
    }
    protected void btnMultiLeftToRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstbOriginalList.Items)
        {
            lstbCopyList.Items.Add(li);
        }
        lstbOriginalList.Items.Clear();
    }
    protected void btnSingleRightToLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstbCopyList.Items)
        {
            if (li.Selected == true)
            {
                lstbOriginalList.Items.Add(li);
            }

            else
            {
                lblDisplay.Text = "Kindly Select Country";

            }
        }

        for (int i = 0; i < lstbCopyList.Items.Count; i++)
        {
            if (lstbCopyList.Items[i].Selected)
            {
                lblDisplay.Text = "";
                lstbCopyList.Items.Remove(lstbCopyList.Items[i]);
                i--;
            }
        }
    }
    protected void btnMultiRightToLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstbCopyList.Items)
        {
            lstbOriginalList.Items.Add(li);
        }
        lstbCopyList.Items.Clear();
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {

        if (lstbOriginalList.Items.Count == 0)
        {
            lblDisplay.Text = "Please Select Country";
        }
        foreach (ListItem li in lstbOriginalList.Items)
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
        if (txtCountryName.Text != "" && txtCountryCode.Text != "" &&  txtCountryCode.Text != "0")
        {
                if (lstbOriginalList.Items.Contains(lstbOriginalList.Items.FindByText(txtCountryName.Text.ToLower())))
                {
                    lblError.Text = "Duplicate Value not allowed";


                }

                

                else
                {
                    for (int i = 0; i < lstbOriginalList.Items.Count; i++)
                    {
                        if (lstbOriginalList.Items[i].Selected)
                        {
                            lstbOriginalList.Items.Remove(lstbOriginalList.Items[i]);
                            i--;
                        }
                    }


                    ListItem li = new ListItem();
                    li.Text = txtCountryName.Text.ToLower();
                    li.Value = txtCountryCode.Text;
                    lstbOriginalList.Items.Add(li);
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