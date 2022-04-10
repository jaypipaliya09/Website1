using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RadioButton_And_CheckBox_RadioButton_CheckBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnClickMe1_Click(object sender, EventArgs e)
    {
        lblAnswer.Text = "";
        lblAnswer.Visible = true;
        if (rbDIET.Checked == true)
        {
            lblrbSelect.Text = "Degree Branches:";
            lblrbSelect.Visible = true;
            blkrbDegree.Visible = true;

            blkrbDiploma.Visible = false;
            btnClickMe2.Visible = true;
        }

        if (rbDIETDS.Checked == true)
        {
            lblrbSelect.Text = "Diploma Branches:";
            lblrbSelect.Visible = true;
            blkrbDiploma.Visible = true;

            blkrbDegree.Visible = false;
            btnClickMe2.Visible = true;
        }

        if (rbDIET.Checked != true && rbDIETDS.Checked != true)
        {
            lblAnswer.Text = "Kindly Select your college";
        }

    }

    protected void btnClickMe2_Click(object sender, EventArgs e)
    {
        lblAnswer.Text = "";
        if (rbComp.Checked == true)
        {

            lblAnswer.Text = "You have selected DIET and your branch is Computer Engineering";

        }
        if (rbElect.Checked == true)
        {

            lblAnswer.Text = "You have selected DIET and your branch is Electrical Engineering";

        }
        if (rbCivil.Checked == true)
        {

            lblAnswer.Text = "You have selected DIET and your branch is Civil Engineering";

        }
        if (rbMech.Checked == true)
        {

            lblAnswer.Text = "You have selected DIET and your branch is Mechanical Engineering";

        }
        if (rbDComp.Checked == true)
        {

            lblAnswer.Text = "You have selected Diploma and your branch is Computer Engineering";

        }
        if (rbDElect.Checked == true)
        {

            lblAnswer.Text = "You have selected Diploma and your branch is Electrical Engineering";

        }
        if (rbDCivil.Checked == true)
        {

            lblAnswer.Text = "You have selected Diploma and your branch is Civil Engineering";

        }
        if (rbDMech.Checked == true)
        {

            lblAnswer.Text = "You have selected Diploma and your branch is Mechanical Engineering";

        }

        if (rbComp.Checked != true && rbElect.Checked != true && rbCivil.Checked != true && rbMech.Checked != true && rbDComp.Checked != true && rbDElect.Checked != true &&
            rbDCivil.Checked != true && rbDMech.Checked != true)
        {
            lblAnswer.Text = "Kindly Select your branch";


        }


        lblAnswer.Visible = true;
    }
    protected void btnClickMe3_Click(object sender, EventArgs e)
    {
        lblAnswer1.Text = "";
        lblAnswer1.Visible = true;

        if (cbDIET.Checked == true)
        {


            cbAll1.Visible = true;
            cbAll1.Checked = false;
            cbClear1.Visible = true;
            cbClear1.Checked = false;
            cbInverse1.Visible = true;
            cbInverse1.Checked = false;
            lblcbSelect.Text = "Degree Branches:";
            lblcbSelect.Visible = true;
            blkDegree.Visible = true;
            blkDiploma.Visible = false;
            btnClickMe4.Visible = true;
        }

        if (cbDIETDS.Checked == true)
        {

            cbAll1.Visible = true;
            cbAll1.Checked = false;
            cbClear1.Visible = true;
            cbClear1.Checked = false;
            cbInverse1.Visible = true;
            cbInverse1.Checked = false;
            blkDiploma.Visible = true;
            lblcbSelect.Text = "Diploma Branches :";
            lblcbSelect.Visible = true;
            blkDegree.Visible = false;
            btnClickMe4.Visible = true;
        }

        if (cbDIET.Checked == true && cbDIETDS.Checked == true)
        {

            cbAll1.Visible = true;
            cbAll1.Checked = false;
            cbClear1.Visible = true;
            cbClear1.Checked = false;
            cbInverse1.Visible = false;
            cbInverse1.Checked = false;
            lblcbSelect.Visible = true;
            lblcbSelect.Text = "Degree and Diploma Branches:";
            blkDegree.Visible = true;
            blkDiploma.Visible = true;
            btnClickMe4.Visible = true;

        }

        if (cbDIET.Checked != true && cbDIETDS.Checked != true)
        {
            lblAnswer1.Text = "Kindly Select your college";
        }
    }
    protected void btnClickMe4_Click(object sender, EventArgs e)
    {

        String strBranch = null;
        lblAnswer1.Text = "";
        int count = 0;

        if (cbComp.Checked == true)
        {
            strBranch = strBranch + "Degree Computer Engineering <br/>";
            count++;

        }
        if (cbElect.Checked == true)
        {

            strBranch = strBranch + "Degree Electrical Engineering <br/>";
            count++;

        }
        if (cbCivil.Checked == true)
        {
            strBranch = strBranch + "Degree Civil Engineering <br/>";
            count++;

        }
        if (cbMech.Checked == true)
        {
            strBranch = strBranch + "Degree Mechanical Engineering <br/>";
            count++;

        }
        if (cbDComp.Checked == true)
        {

            strBranch = strBranch + "Diploma Computer Engineering <br/>";
            count++;

        }
        if (cbDElect.Checked == true)
        {

            strBranch = strBranch + "Diploma Electrical Engineering <br/>";
            count++;

        }
        if (cbDCivil.Checked == true)
        {

            strBranch = strBranch + "Diploma Civil Engineering <br/>";
            count++;

        }
        if (cbDMech.Checked == true)
        {

            strBranch = strBranch + "Diploma Mechanical Engineering <br/>";
            count++;

        }

        if (count == 1)
        {
            lblAnswer1.Text = "You have selected the branch <br/>" + strBranch;
        }

        else
        {
            lblAnswer1.Text = "You have selected the branches <br/>" + strBranch;
        }

        if (cbComp.Checked != true && cbElect.Checked != true && cbCivil.Checked != true && cbMech.Checked != true && cbDComp.Checked != true && cbDElect.Checked != true &&
            cbDCivil.Checked != true && cbDMech.Checked != true)
        {
            lblAnswer1.Text = "Kindly Select your branch";


        }
        lblAnswer1.Visible = true;

    }
    protected void cbAll_CheckedChanged(object sender, EventArgs e)
    {
        cbClear.Checked = false;
        cbInverse.Checked = false;
        cbDIET.Checked = true;
        cbDIETDS.Checked = true;

    }

    protected void cbAll1_CheckedChanged(object sender, EventArgs e)
    {

        cbComp.Checked = true;
        cbCivil.Checked = true;
        cbElect.Checked = true;
        cbMech.Checked = true;
        cbDComp.Checked = true;
        cbDCivil.Checked = true;
        cbDElect.Checked = true;
        cbDMech.Checked = true;


    }

    protected void cbClear_CheckedChanged(object sender, EventArgs e)
    {
        cbDIET.Checked = false;
        cbDIETDS.Checked = false;
        cbAll.Checked = false;
        cbInverse.Checked = false;

    }

    protected void cbClear1_CheckedChanged(object sender, EventArgs e)
    {
        cbComp.Checked = false;
        cbCivil.Checked = false;
        cbElect.Checked = false;
        cbMech.Checked = false;
        cbDComp.Checked = false;
        cbDCivil.Checked = false;
        cbDElect.Checked = false;
        cbDMech.Checked = false;
        cbAll1.Checked = false;

    }
    protected void cbInverse_CheckedChanged(object sender, EventArgs e)
    {
        if (cbAll.Checked == true)
        {
            cbClear.Checked = true;
            cbAll.Checked = false;
            cbDIET.Checked = false;
            cbDIETDS.Checked = false;
        }

        else if (cbClear.Checked == true)
        {
            cbAll.Checked = true;
            cbDIET.Checked = true;
            cbDIETDS.Checked = true;
            cbClear.Checked = false;
        }

        else if (cbDIET.Checked == true)
        {
            cbDIETDS.Checked = true;
            cbDIET.Checked = false;

        }

        else if (cbDIETDS.Checked == true)
        {
            cbDIET.Checked = true;
            cbDIETDS.Checked = false;
        }

        else
        {
            cbDIET.Checked = true;
            cbDIETDS.Checked = true;
        }

    }

    protected void cbInverse1_CheckedChanged(object sender, EventArgs e)
    {
        if (cbAll1.Checked == true)
        {
            cbElect.Checked = false;
            cbMech.Checked = false;
            cbCivil.Checked = false;
            cbDComp.Checked = false;
            cbDElect.Checked = false;
            cbDMech.Checked = false;
            cbDCivil.Checked = false;
            cbComp.Checked = false;
            cbAll1.Checked = false;
            cbClear1.Checked = true;

        }

        else if (cbClear1.Checked == true)
        {
            cbElect.Checked = true;
            cbMech.Checked = true;
            cbCivil.Checked = true;
            cbComp.Checked = true;
            cbDComp.Checked = true;
            cbDElect.Checked = true;
            cbDMech.Checked = true;
            cbDCivil.Checked = true;
            cbAll1.Checked = true;
            cbClear1.Checked = false;
        }


        else if (cbComp.Checked == true && cbElect.Checked == true && cbMech.Checked == true && cbCivil.Checked == true)
        {
            cbComp.Checked = false;
            cbElect.Checked = false;
            cbMech.Checked = false;
            cbCivil.Checked = false;

        }

     

        else if (cbDComp.Checked == true && cbDElect.Checked == true && cbDMech.Checked == true && cbDCivil.Checked == true)
        {
            cbDComp.Checked = false;
            cbDElect.Checked = false;
            cbDMech.Checked = false;
            cbDCivil.Checked = false;

        }

       

        else if (cbComp.Checked == true && cbElect.Checked == true && cbMech.Checked == true)
        {
            cbComp.Checked = false;
            cbElect.Checked = false;
            cbMech.Checked = false;
            cbCivil.Checked = true;
        }

        else if (cbComp.Checked == true && cbElect.Checked == true && cbCivil.Checked == true)
        {
            cbComp.Checked = false;
            cbElect.Checked = false;
            cbMech.Checked = true;
            cbCivil.Checked = false;
        }

        else if (cbCivil.Checked == true && cbElect.Checked == true && cbMech.Checked == true)
        {
            cbComp.Checked = true;
            cbElect.Checked = false;
            cbMech.Checked = false;
            cbCivil.Checked = false;
        }

        else if (cbDComp.Checked == true && cbDElect.Checked == true && cbDMech.Checked == true)
        {
            cbDComp.Checked = false;
            cbDElect.Checked = false;
            cbDMech.Checked = false;
            cbDCivil.Checked = true;
        }

        else if (cbDComp.Checked == true && cbDElect.Checked == true && cbDCivil.Checked == true)
        {
            cbDComp.Checked = false;
            cbDElect.Checked = false;
            cbDMech.Checked = true;
            cbDCivil.Checked = false;
        }

        else if (cbDCivil.Checked == true && cbDElect.Checked == true && cbDMech.Checked == true)
        {
            cbDComp.Checked = true;
            cbDElect.Checked = false;
            cbDMech.Checked = false;
            cbDCivil.Checked = false;
        }

        else if (cbComp.Checked == true && cbElect.Checked == true)
        {
            cbComp.Checked = false;
            cbElect.Checked = false;
            cbMech.Checked = true;
            cbCivil.Checked = true;
        }

        else if (cbComp.Checked == true && cbMech.Checked == true)
        {
            cbComp.Checked = false;
            cbElect.Checked = true;
            cbMech.Checked = false;
            cbCivil.Checked = true;
        }

        else if (cbComp.Checked == true && cbCivil.Checked == true)
        {
            cbComp.Checked = false;
            cbElect.Checked = true;
            cbMech.Checked = true;
            cbCivil.Checked = false;
        }

        else if (cbElect.Checked == true && cbMech.Checked == true)
        {
            cbComp.Checked = true;
            cbElect.Checked = false;
            cbMech.Checked = false;
            cbCivil.Checked = true;
        }

        else if (cbElect.Checked == true && cbCivil.Checked == true)
        {
            cbComp.Checked = true;
            cbElect.Checked = false;
            cbMech.Checked = true;
            cbCivil.Checked = false;
        }

        else if (cbCivil.Checked == true && cbMech.Checked == true)
        {
            cbComp.Checked = true;
            cbElect.Checked = true;
            cbMech.Checked = false;
            cbCivil.Checked = false;
        }

        else if (cbDComp.Checked == true && cbDElect.Checked == true)
        {
            cbDComp.Checked = false;
            cbDElect.Checked = false;
            cbDMech.Checked = true;
            cbDCivil.Checked = true;
        }

        else if (cbDComp.Checked == true && cbDMech.Checked == true)
        {
            cbDComp.Checked = false;
            cbDElect.Checked = true;
            cbDMech.Checked = false;
            cbDCivil.Checked = true;
        }

        else if (cbDComp.Checked == true && cbDCivil.Checked == true)
        {
            cbDComp.Checked = false;
            cbDElect.Checked = true;
            cbDMech.Checked = true;
            cbDCivil.Checked = false;
        }

        else if (cbDElect.Checked == true && cbDMech.Checked == true)
        {
            cbDComp.Checked = true;
            cbDElect.Checked = false;
            cbDMech.Checked = false;
            cbDCivil.Checked = true;
        }

        else if (cbDElect.Checked == true && cbDCivil.Checked == true)
        {
            cbDComp.Checked = true;
            cbDElect.Checked = false;
            cbDMech.Checked = true;
            cbDCivil.Checked = false;
        }

        else if (cbDCivil.Checked == true && cbDMech.Checked == true)
        {
            cbDComp.Checked = true;
            cbDElect.Checked = true;
            cbDMech.Checked = false;
            cbDCivil.Checked = false;
        }

        else if (cbComp.Checked == true)
        {
            cbElect.Checked = true;
            cbMech.Checked = true;
            cbCivil.Checked = true;
            cbComp.Checked = false;
        }

        else if (cbElect.Checked == true)
        {
            cbMech.Checked = true;
            cbCivil.Checked = true;
            cbComp.Checked = true;
            cbElect.Checked = false;
        }

        else if (cbMech.Checked == true)
        {
            cbMech.Checked = false;
            cbCivil.Checked = true;
            cbComp.Checked = true;
            cbElect.Checked = true;
        }

        else if (cbCivil.Checked == true)
        {
            cbMech.Checked = true;
            cbCivil.Checked = false;
            cbComp.Checked = true;
            cbElect.Checked = true;
        }

        else if (cbDComp.Checked == true)
        {
            cbDElect.Checked = true;
            cbDMech.Checked = true;
            cbDCivil.Checked = true;
            cbDComp.Checked = false;
        }

        else if (cbDElect.Checked == true)
        {
            cbDMech.Checked = true;
            cbDCivil.Checked = true;
            cbDComp.Checked = true;
            cbDElect.Checked = false;
        }

        else if (cbDMech.Checked == true)
        {
            cbDMech.Checked = false;
            cbDCivil.Checked = true;
            cbDComp.Checked = true;
            cbDElect.Checked = true;
        }

        else if (cbDCivil.Checked == true)
        {
            cbDMech.Checked = true;
            cbDCivil.Checked = false;
            cbDComp.Checked = true;
            cbDElect.Checked = true;
        }

        else
        {
            if ((cbComp.Checked != true && cbElect.Checked != true && cbMech.Checked != true && cbCivil.Checked != true))
            {
                cbComp.Checked = true;
                cbElect.Checked = true;
                cbMech.Checked = true;
                cbCivil.Checked = true;
                

            }
            if (cbDComp.Checked != true && cbDElect.Checked != true && cbDMech.Checked != true && cbDCivil.Checked != true)
            {
                cbDComp.Checked = true;
                cbDElect.Checked = true;
                cbDMech.Checked = true;
                cbDCivil.Checked = true;
            }
        }

    }
}