using System.Data.Entity;

namespace TimeTracker.Models
{
    public class TimeTrackerDbContext : DbContext
    {
        public TimeTrackerDbContext() : base("name=TimeTrackerDbContext")
        {
        }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<TimeCard> TimeCards { get; set; }
    }
}