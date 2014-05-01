using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSwift.Premium
{
    public partial class SearchPremium : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new ServiceReference1.Service1Client();
            
            if (lstPremiums.Items.Count <= 0)
            {
                int i = 0;
                string line = "";
                string result = client.ListPremium();
                lstPremiums.Items.Add(line);
                if (result != "")
                {

                    string[] results = result.Split('%');

                    while (i + 2 < results.Length)
                    {
                        line = results[i] + " ";
                        line += results[i + 1] + " ";
                        i += 2;
                        lstPremiums.Items.Add(line);
                    }
                }
            }
        }
        protected void lstPremium_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] item = lstPremiums.SelectedItem.ToString().Split(' ');
            
            string result = client.SearchPremium(item[0]);

            if (result != "")
            {
                string[] results = result.Split('%');
                txtCarID.Text = results[0];
                txtPolicyID.Text = results[1];
                txtPolicyDescription.Text = results[2];
                txtCost.Text = results[3];
                TextDateMade.Text = results[4];
            }
        }

        protected void btnPremiumSearch_Click(object sender, EventArgs e)
        {
            lblDateMade.Text = lblDateMade.Text = lblErrorCost.Text = lblErrorDescription.Text = lblErrorPolicyID.Text = lblErrorPremiumID.Text = "";

            string error;
            bool pass = true;

            if (client.ValidatePassword(out error, 3, 10, txtCarID.Text) == false)
            {
                lblErrorCarID.Text = error;
                pass = false;
            }
            if (client.ValidateNumber(out error, 1, 25, txtPolicyID.Text) == false)
            {
                lblErrorPolicyID.Text = error;
                pass = false;
            }
            if (client.ValidateName(out error, 4, 100, txtPolicyDescription.Text) == false)
            {
                lblErrorDescription.Text = error;
                pass = false;
            }
            if (client.ValidateNumber(out error, 8, 8, txtCost.Text) == false)
            {
                lblErrorCost.Text = error;
                pass = false;
            }
            if (client.ValidateAddress(out error, 2, 20, TextDateMade.Text) == false)
            {
                lblDateMade.Text = error;
                pass = false;
            }
            if (pass == true)
            {
                if (lstPremiums.SelectedItem.ToString() == "") ;
                else
                {
                    string[] item = lstPremiums.SelectedItem.ToString().Split(' ');
                    client.UpdatePremium(item[0], txtCarID.Text, txtPolicyID.Text, txtPolicyDescription.Text, txtCost.Text, TextDateMade.Text);
                }
            }
        }
    }
}