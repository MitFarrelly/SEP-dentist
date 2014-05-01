using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSwift.Customer
{
    public partial class CreateCustomer : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new ServiceReference1.Service1Client();

            if (lstCustomers.Items.Count <= 0)
            {
                int i=0;
                string line = "";
                string result = client.ListCustomers();
                lstCustomers.Items.Add(line);
                if (result != "")
                {
                    
                    string[] results = result.Split('%');
                    
                    while (i + 2 < results.Length)
                    {
                        line = results[i] + " ";
                        line += results[i + 1] + " ";
                        line += results[i + 2];
                        i += 3;
                        lstCustomers.Items.Add(line);
                    }
                }
            }
        }

        protected void lstCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] item = lstCustomers.SelectedItem.ToString().Split(' ');
            string result = client.SearchCustomer(item[0]);

            if (result != "")
            {
                string[] results = result.Split('%');
                txtPassword1.Text = results[0];
                txtPassword2.Text = results[0];
                txtFirstName.Text = results[1];
                txtLastName.Text = results[2];
                txtHomeAddress.Text = results[3];
                txtPhoneNumber.Text = results[4];
                txtEmailAddress.Text = results[5];
                txtCreditCard.Text = results[6];
                Button1.Text = "Update Customer";
            }
            else
            {
                txtPassword1.Text = "";
                txtPassword2.Text = "";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtHomeAddress.Text = "";
                txtPhoneNumber.Text = "";
                txtEmailAddress.Text = "";
                txtCreditCard.Text = "";
                Button1.Text = "Create Customer";
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblErrorAddress.Text = lblErrorCreditCardNum.Text = lblErrorEmail.Text = lblErrorFirstName.Text = lblErrorLastName.Text = lblErrorPassword1.Text
                = lblErrorPassword2.Text = lblErrorPhone.Text = "";

            string error;
            bool pass = true;
            if (client.ValidateName(out error, 3, 25, txtFirstName.Text) == false)
            {
                lblErrorFirstName.Text = error;
                pass = false;
            }
            if (client.ValidateName(out error, 3, 25, txtLastName.Text) == false)
            {
                lblErrorLastName.Text = error;
                pass = false;
            }
            if (txtPassword1.Text == txtPassword2.Text)
            {
                if (client.ValidatePassword(out error, 2, 10, txtPassword1.Text) == false)
                {
                    lblErrorPassword1.Text = error;
                    lblErrorPassword2.Text = error;
                    pass = false;
                }
            }
            else
            {
                lblErrorPassword1.Text = "Password Fields not Same";
                lblErrorPassword2.Text = "Password Fields not Same";
                pass = false;
            }
            if (client.ValidateAddress(out error, 4, 50, txtHomeAddress.Text) == false)
            {
                lblErrorAddress.Text = error;
                pass = false;
            }
            if (client.ValidateNumber(out error, 8, 8, txtPhoneNumber.Text) == false)
            {
                lblErrorPhone.Text = error;
                pass = false;
            }
            if (client.ValidateAddress(out error, 2, 20, txtEmailAddress.Text) == false)
            {
                lblErrorEmail.Text = error;
                pass = false;
            }
            if (client.ValidateNumber(out error, 12, 12, txtCreditCard.Text) == false)
            {
                lblErrorCreditCardNum.Text = error;
                pass = false;
            }

            if (pass == true)
            {
                if (lstCustomers.SelectedItem.ToString() == "")
                    client.CreateCustomer(txtFirstName.Text, txtLastName.Text, txtPassword1.Text, txtHomeAddress.Text, txtPhoneNumber.Text, txtEmailAddress.Text, txtCreditCard.Text);
                else
                {
                    string[] item = lstCustomers.SelectedItem.ToString().Split(' ');
                    client.UpdateCustomer(item[0], txtFirstName.Text, txtLastName.Text, txtPassword1.Text, txtHomeAddress.Text, txtPhoneNumber.Text, txtEmailAddress.Text, txtCreditCard.Text);
                    string line = item[0] + " ";
                    line += txtFirstName.Text + " ";
                    line += txtLastName.Text;
                    lstCustomers.SelectedItem.Text = line;
                }
            }
        }
    }
}