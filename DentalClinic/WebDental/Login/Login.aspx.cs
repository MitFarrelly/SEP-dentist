using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSwift.Login
{
    public partial class Login : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new ServiceReference1.Service1Client();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string error;
            bool pass = true;
            if(client.ValidateNumber(out error, 1, 10, txtUserName.Text) == false)
            {
                lblerrorUserName.Text = error;
                pass = false;
            }
            if (client.ValidatePassword(out error, 3, 10, txtPassword.Text) == false)
            {
                lblerrorPassword.Text = error;
                pass = false;
            }
            if (pass == true)
            {
                bool result = client.Login(txtUserName.Text, txtPassword.Text);
                if (result == true)
                {
                    lblErrorLogin.Text = "Login Passed";
                }
                else
                {
                    lblErrorLogin.Text = "Login Failed";
                }
            }
        }
    }
}