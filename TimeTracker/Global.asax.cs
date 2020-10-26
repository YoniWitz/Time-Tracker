using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using TimeTracker.Models;

namespace TimeTracker
{
    public class Global : HttpApplication
    {
        TimeTrackerDbContext _context = new TimeTrackerDbContext();
        void Application_Start(object sender, EventArgs e)
        {

            Database.SetInitializer(new CreateDatabaseIfNotExists<TimeTrackerDbContext>());
            _context.Database.Initialize(true);
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}