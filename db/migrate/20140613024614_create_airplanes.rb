class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :airplane_model

      t.timestamps
    end
  end
end
