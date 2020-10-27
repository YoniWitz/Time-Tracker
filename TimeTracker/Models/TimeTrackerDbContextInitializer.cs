using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace TimeTracker.Models
{
    public class TimeTrackerDbContextInitializer : DropCreateDatabaseIfModelChanges<TimeTrackerDbContext>
    {
        protected override void Seed(TimeTrackerDbContext context)
        {
            var emps = new List<Employee>
            {
                 new Employee { FirstName = "John", LastName="Doe", Department = "Finance", HireDate = DateTime.Now.AddDays(-365), ID = 1,
                     TimeCards = new List<TimeCard> {
                         new TimeCard { ID = 1, SubmissionDate = DateTime.Now, MondayHours = 8, TuesdayHours = 8, WednesdayHours = 8, FridayHours = 8},
                         new TimeCard { ID = 2, SubmissionDate = DateTime.Now.AddDays(-7), MondayHours = 8, TuesdayHours = 8, WednesdayHours = 8, FridayHours = 8},
                     }
                },
                new Employee { FirstName = "Jane", LastName="Doe", Department = "HR", HireDate = DateTime.Now.AddDays(-200), ID = 1,
                     TimeCards = new List<TimeCard> {
                         new TimeCard { ID = 1, SubmissionDate = DateTime.Now, MondayHours = 10, TuesdayHours = 8, WednesdayHours = 10, FridayHours = 8},
                         new TimeCard { ID = 2, SubmissionDate = DateTime.Now.AddDays(-7), MondayHours = 12, TuesdayHours = 8, WednesdayHours = 10, FridayHours = 8},
                     }
                }
            };

            emps.ForEach(e => context.Employees.Add(e));
            base.Seed(context);
        }
    }
}