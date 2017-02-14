class CreateAnswers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.string :user_id, null: false 
  		t.text :body, null: false 

  		t.timestamps 
  	end 
  end
end
