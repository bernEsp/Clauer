class Keyrepo < ActiveRecord::Base
   attr_accessible :name, :key
   
  def to_json(options = {})
    super(options.merge(:only => [ :id, :name, :created_at, :key ]))
  end
  
end
