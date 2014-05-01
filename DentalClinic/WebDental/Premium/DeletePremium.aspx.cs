using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSwift.Premium
{
    public partial class DeletePremium : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new ServiceReference1.Service1Client();
            
            if (lstPremiums2.Items.Count <= 0)
            {
                int i = 0;
                string line = "";
                string result = client.ListPremium();
                lstPremiums2.Items.Add(line);
                if (result != "")
                {

                    string[] results = result.Split('%');

                    while (i + 2 < results.Length)
                    {
                        line = results[i] + " ";
                        line += results[i + 1] + " ";
                        i += 2;
                        lstPremiums2.Items.Add(line);
                    }
                }
            }

        }

        protected void btnPremiumSave_Click(object sender, EventArgs e)
        {
            if (lstPremiums2.SelectedItem.ToString() != "")
            {
                string[] item = lstPremiums2.SelectedItem.ToString().Split(' ');
                client.DeletePremium(item[0]);
            }
        }
    }
}