using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsumingWS
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        { 
            ServiceReference1.WebServiceSampleSoapClient client = new ServiceReference1.WebServiceSampleSoapClient();
            
            ServiceReference1.WebServiceResponse response = client.Calculator
            (
                Convert.ToInt32(txtFirstValue.Text),
                Convert.ToInt32(txtSecondValue.Text),
                txtOperation.Text
            );

            if (response.Result != string.Empty)
                lblResult.Text = "Result: <b style = 'color:Green'>" + response.Result + "</b>";
            else 
            {
                lblResult.Text = "Error: <b style = 'color:Red'>" + response.ErrorMessage + "</b>";
            }
        }
    }
}