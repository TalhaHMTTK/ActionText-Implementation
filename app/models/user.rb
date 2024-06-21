class User < ApplicationRecord
    has_rich_text :notes
    belongs_to :department
end
