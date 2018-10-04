class CreateObjs < ActiveRecord::Migration[5.2]
  def change
    create_table :objs do |t|
      t.string :inventar
      t.string :category
      t.string :name
      t.string :sdate
      t.string :expdate
      t.string :ident
      t.string :img
      t.string :geo
      t.string :ksk
      t.string :ikomek
      t.string :district
      t.string :checktimes
      t.string :userimg1
      t.string :usergeo1
      t.string :userimg2
      t.string :usergeo2
      t.string :userimg3
      t.string :usergeo3

      t.timestamps
    end
  end
end
