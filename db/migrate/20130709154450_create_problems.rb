class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title
      t.text :description
      t.text :input
      t.text :output
      t.text :sample_input
      t.text :sample_output
      t.text :hint
      t.text :source
      t.integer :time_limit
      t.integer :memory_limit
      t.integer :accepted
      t.integer :submit

      t.timestamps
    end
  end
end
