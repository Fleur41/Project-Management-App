require_relative './modules_module'

class Task < ActiveRecord::Base
    extend InheritMethods::ClassMethods

    belongs_to :board
    has_one :project, through: :board

    def self.render_all_formatted_for_frontend
        self.all.map do |task|
            {
                id: task.id,
                name: task.name,
                due_date: task.due_date,
                description: task.description,
                status: task.status,
            }