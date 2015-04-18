class UpdateUsers < ActiveRecord::Migration
  def change
    @u = User.find_by(id: 1)
    @u.update_attribute :admin, true
  end
end
