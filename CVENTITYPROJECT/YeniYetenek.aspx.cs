using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITYPROJECT
{
    public partial class YeniYetenek : System.Web.UI.Page
    {
        DBCVENTİTYEntities1 db = new DBCVENTİTYEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLYETENEKLER y = new TBLYETENEKLER();
            y.YETENEK = TextBox1.Text;
            db.TBLYETENEKLER.Add(y);
            db.SaveChanges();
            Response.Redirect("Yeeteneklerim.aspx");
        }
    }
}