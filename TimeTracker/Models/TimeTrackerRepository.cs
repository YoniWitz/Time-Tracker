using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeTracker.Models
{
    public class TimeTrackerRepository
    {
        TimeTrackerDbContext _context = new TimeTrackerDbContext();
        public List<Employee> GetEmployees()
        {
            return (from e in _context.Employees
                    select e).ToList();
        }

        public List<TimeCard> GetEmployeeTimeCards(int employeeId)
        {
            return (from e in _context.Employees
                    where e.ID == employeeId
                    select e.TimeCards).SingleOrDefault();
        }
    }
}