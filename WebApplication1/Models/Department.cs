namespace CompanyAPI.Models
{
    public class Department
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Location { get; set; }
        public decimal Budget { get; set; }
        public bool HasPrinter { get; set; }
        public List<Employee> Employees { get; set; }
    }
}
