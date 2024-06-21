module ApplicationHelper
    def select_department
        Department.all.map{|d| [d.name, d.id]}
    end
end