using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITYPROJECT
{
    public partial class YetenekSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBCVENTİTYEntities1 db = new DBCVENTİTYEntities1();

            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var sil = db.TBLYETENEKLER.Find(x);
            db.TBLYETENEKLER.Remove(sil);
            db.SaveChanges();
            Response.Redirect("Yeeteneklerim.aspx");
        }
    }
}