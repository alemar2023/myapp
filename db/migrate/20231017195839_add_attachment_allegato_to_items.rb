class AddAttachmentAllegatoToItems < ActiveRecord::Migration[7.1]
  def self.up
    change_table :items do |t|
      t.attachment :allegato
    end
  end

  def self.down
    remove_attachment :items, :allegato
  end
end
