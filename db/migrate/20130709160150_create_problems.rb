class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title, :null => false, :default => ''
      t.text :description, :default => ''
      t.text :input, :default => ''
      t.text :output, :default => ''
      t.text :sample_input, :default => ''
      t.text :sample_output, :default => ''
      t.text :hint, :default => ''
      t.text :source, :default => '' 
      t.integer :time_limit, :null => false, :default => '1' # Unit: Second
      t.integer :memory_limit, :null => false, :default => '16' # Unit: MB
      t.integer :accepted, :default => '0'
      t.integer :submit, :default => '0'

      t.timestamps
    end
  end
end
