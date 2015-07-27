using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using budgetplan.Models;
using System.Web.ModelBinding;

namespace budget_planner
{
    public partial class viewBudget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetBudgetItems();
            }
        }
        protected void GetBudgetItems()
        {
    
            using (Entities db = new Entities ()) 
            {
       
               var Item = from i in db.BudgetItems
                               select i;
        
                grdBudgetItems.DataSource = Item.ToList();
                grdBudgetItems.DataBind();

            }
        }
    }
}