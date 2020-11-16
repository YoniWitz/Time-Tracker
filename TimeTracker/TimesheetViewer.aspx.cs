using System;
using System.Web;
using System.Web.UI;

namespace TimeTracker
{
    public partial class TimesheetViewer : Page
    {
        void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["Print"] != null)
            {
                MasterPageFile = "~/Print.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("login.aspx", true);
            }
        }
        protected void SignOut(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}