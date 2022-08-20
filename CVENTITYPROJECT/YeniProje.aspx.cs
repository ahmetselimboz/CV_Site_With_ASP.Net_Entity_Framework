using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITYPROJECT
{
    public partial class YeniProje : System.Web.UI.Page
    {
        DBCVENTİTYEntities1 db = new DBCVENTİTYEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLPROJELER t = new TBLPROJELER();

            t.PROJEAD = TextBox1.Text;
            t.PROJEDETAY = TextBox2.Text;
            FileUpload1.SaveAs(Server.MapPath("/Web/images/" + FileUpload1.FileName));
            t.PROJERESİM = "/Web/images/" + FileUpload1.FileName;
            db.TBLPROJELER.Add(t);
            db.SaveChanges();
            Response.Redirect("Projeler.aspx");
        }
    }
}