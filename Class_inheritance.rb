class Employee
    attr_reader :name, :title, :salary, :boss
    def initialize (name, title, salary, boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end

    def boss=(boss)
        @boss = boss
        boss.add_employee(self)
    end


end


class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def subsalary
        sum = 0
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                sum += employee.salary + employee.subsalary
            else
                sum += employee.salary
            end
        end
        sum
    end

    def bonus(multiplier)
        self.subsalary * multiplier
    end

    def add_employee(employee)
        self.employees << employee
    end
end

ned = Manager.new("Ned","Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
shawna = Employee.new("Shawna", "TA ", 12000, "Darren")
david = Employee.new("David", "TA", 10000, "Darren")


darren.boss = ned
shawna.boss = darren
darren.add_employee(david)


p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000
