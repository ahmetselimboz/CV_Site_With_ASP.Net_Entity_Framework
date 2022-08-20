using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITYPROJECT
{
    public partial class ProjeSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBCVENTİTYEntities1 db = new DBCVENTİTYEntities1();

            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var sil = db.TBLPROJELER.Find(x);
            db.TBLPROJELER.Remove(sil);
            db.SaveChanges();
            Response.Redirect("Projeler.aspx");
            
        }
    }
}