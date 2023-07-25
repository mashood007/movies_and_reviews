class CreateMovieActors < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_actors do |t|
      t.integer :actor_id, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.timestamps
    end
  end
end
