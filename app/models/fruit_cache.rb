class FruitCache < ActiveRecord::Base
  #include Tanker
  
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  has_many :log_entries
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true#, :reject_if => lambda { |t| t('trip_image').nil? }
    
  #after_save :update_tank_indexes
  #after_destroy :delete_tank_indexes
  
  
  
  #tankit Rails.configuration.indextank_index do
  #  indexes :name
  #  indexes :description
  #  variables do 
  #    {
  #        0 => latitude,
  #        1 => longitude
  #    }
  #  end
  #end
  

end
