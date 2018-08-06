module HR
  class Employee
    def initialize(name, pay_rate)
      @pay = pay_rate
      @name = name
    end

    def name
      @name
    end
  end

  class HourlyEmployee < Employee
    def pay(hours)
      pay = 0
      if hours > 40
        overtime = (@pay * 1.5) * (hours - 40)
        pay = (@pay * 40) + overtime
      else
        pay = @pay * hours
      end
      pay
    end
  end

  class SalariedEmployee < Employee
    def pay(hours)
      @pay / 24
    end
  end
end

employees = [
  HR::HourlyEmployee.new("Joe", 35),
  HR::HourlyEmployee.new("John", 37),
  HR::HourlyEmployee.new("Abigail", 28),
  HR::SalariedEmployee.new("Tom", 40_000),
  HR::SalariedEmployee.new("Harry", 70_000),
  HR::SalariedEmployee.new("Tina", 120_000),
]

employees.each do |e|
  puts "I'm paying #{e.name} #{e.pay(40)}"
end
