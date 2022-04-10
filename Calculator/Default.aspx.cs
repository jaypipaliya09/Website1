using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
       if(txtNo1.Text!="" && txtNo2.Text!=""){
           if (Convert.ToInt32(txtNo1.Text) < 0 || Convert.ToInt32(txtNo2.Text) < 0)
           {
               lblAnswer.Text = "Please Enter a Positive Integer number";
           }

           else
           {
               lblAnswer.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) + Convert.ToDouble(txtNo2.Text));
           }
       }

       else{
           lblAnswer.Text = "Please Enter a Input";
       }
       
    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        if (txtNo1.Text != "" && txtNo2.Text != "")
        {
            if (Convert.ToInt32(txtNo1.Text) < 0 || Convert.ToInt32(txtNo2.Text) < 0)
            {
                lblAnswer.Text = "Please Enter a Positive Integer number";
            }

            else
            {
                lblAnswer.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) - Convert.ToDouble(txtNo2.Text));
            }
        }

        else
        {
            lblAnswer.Text = "Please Enter a Input";
        }
    }
    protected void btnMul_Click(object sender, EventArgs e)
    {
        if(txtNo1.Text!="" && txtNo2.Text!=""){
            if (Convert.ToInt32(txtNo1.Text) <= 0 || Convert.ToInt32(txtNo2.Text) <= 0)
            {
                lblAnswer.Text = "Please Enter a Positive Integer number";
            }

            else
            {
                lblAnswer.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) * Convert.ToDouble(txtNo2.Text));
            }
        }
        else
        {
            lblAnswer.Text = "Please Enter a Input";
        }
    }
    protected void btnDiv_Click(object sender, EventArgs e)
    {
        if(txtNo1.Text!="" && txtNo2.Text!=""){
            if (Convert.ToDouble(txtNo1.Text) <= 0 || Convert.ToDouble(txtNo2.Text) <= 0)
            {
                lblAnswer.Text = "Please Enter a Positive Integer number";
            }
            else
            {
                lblAnswer.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) / Convert.ToDouble(txtNo2.Text));
            }
        }
        else
        {
            lblAnswer.Text = "Please Enter a Input";
        }
    }
    protected void btnMod_Click(object sender, EventArgs e)
    {
        if (txtNo1.Text != "" && txtNo2.Text != "")
        {
            if (Convert.ToInt32(txtNo1.Text) <= 0 || Convert.ToInt32(txtNo2.Text) <= 0)
            {
                lblAnswer.Text = "Please Enter a Positive Integer number";
            }
            else
            {
                lblAnswer.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) % Convert.ToDouble(txtNo2.Text));
            }
        }
        else
        {
            lblAnswer.Text = "Please Enter a Input";
        }
    }
}