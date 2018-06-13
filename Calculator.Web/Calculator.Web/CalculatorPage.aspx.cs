using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Calculator.Web
{
    public partial class CalculatorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            int numerator = Convert.ToInt32(txtNumerator);
            int denominator = Convert.ToInt32(txtDenominator);
            int result = Calculator.Library.Calculator.Divide(numerator, denominator);
            txtResult.Text = result.ToString();
        }
    }
}