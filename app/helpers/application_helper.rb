module ApplicationHelper
    def select_department
        Department.all.map{|d| [d.name]}
    end
end