using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSwift.Customer
{
    public partial class Delete : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new ServiceReference1.Service1Client();


            if (lstDelete.Items.Count <= 0)
            {
                int i = 0;
                string line = "";
                string result = client.ListCustomers();
                lstDelete.Items.Add(line);
                if (result != "")
                {

                    string[] results = result.Split('%');

                    while (i + 2 < results.Length)
                    {
                        line = results[i] + " ";
                        line += results[i + 1] + " ";
                        line += results[i + 2];
                        i += 3;
                        lstDelete.Items.Add(line);
                    }
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (lstDelete.SelectedItem.ToString() != "")
            {
                string[] item = lstDelete.SelectedItem.ToString().Split(' ');
                client.DeleteCustomer(item[0]);
            }
        }
    }
}