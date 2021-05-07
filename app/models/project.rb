class Project < ApplicationRecord
    extend FriendlyId
    validates_presence_of :title, :description, :short_desc, :demo_video

    has_one_attached :img
    
    friendly_id :title, use: :slugged  

    def should_generate_new_friendly_id?
        title_changed?
    end
end
