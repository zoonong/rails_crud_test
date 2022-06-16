class CreateChlos < ActiveRecord::Migration[7.0]
  def change
    create_table :chlos do |t|

      t.timestamps
    end
  end
end
