using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSwift.Premium
{
    public partial class createPremium : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new ServiceReference1.Service1Client();

            if (lstSelectPremium.Items.Count <= 0)
            {
                int i = 0;
                string line = "";
                string result = client.ListPolicy();
                lstSelectPremium.Items.Add(line);
                if (result != "")
                {

                    string[] results = result.Split('%');

                    while (i + 2 < results.Length)
                    {
                        line = results[i] + " ";
                        line += results[i + 1] + " ";
                        i += 2;
                        lstSelectPremium.Items.Add(line);
                    }
                }
            }
        }
        protected void lstPremium_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnPremiumSave_Click(object sender, EventArgs e)
        {
            lblDateMade.Text = lblDateMade.Text = lblErrorCost.Text = lblErrorPremiumID.Text ="";

            string error;
            bool pass = true;

            if (lstSelectPremium.SelectedItem.ToString() == "")
            {
                lblErrorPremiumID.Text = "error";
                pass = false;
            }

            if (client.ValidateNumber(out error, 1, 10,  txtCarID.Text) == false)
            {
                lblErrorCarID.Text = error;
                pass = false;
            }
            
            if (client.ValidateNumber(out error, 1, 8, txtCost.Text) == false)
            {
                lblErrorCost.Text = error;
                pass = false;
            }
            if (client.ValidateAddress(out error, 1, 20, TextDateMade.Text) == false)
            {
                lblDateMade.Text = error;
                pass = false;
            }
            if (pass == true)
            {
                if (lstSelectPremium.SelectedItem.ToString() == "") ;
                //client.CreatePremium(txtCarID.Text, txtPolicyID.Text, txtPolicyDescription.Text, txtCost.Text, TextDateMade.Text, "1");
                else
                {
                    string[] item = lstSelectPremium.SelectedItem.ToString().Split(' ');
                    client.CreatePremium(txtCarID.Text, item[0], item[1], txtCost.Text, TextDateMade.Text, "1");
                }
            }
        }
    }
}

