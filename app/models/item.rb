class Item < ApplicationRecord
  belongs_to :user



  has_attached_file :cover, styles: { medium: "300x300>", thumb: "150x100>" }
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/,
                                    message: "Solo le immagini consentite"

  has_attached_file :allegato
  validates_attachment_content_type :allegato, :content_type => [ /^image\/(png|gif|jpeg)/,'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document','application/mspowerpoint','application/vnd.ms-powerpoint','application/vnd.openxmlformats-officedocument.presentationml.presentation', 'application/pdf', 'application/msexcel','application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','audio/mpeg', 'audio/mp3' ],
                                   message: "Formato non supportato"

  validates :title, :description, :price,  presence: true
  validates :price, numericality: { greater_than: 49 }
  validates :cover, attachment_presence: true
  #validates :allegato, attachment_presence: true

  def mycustomfun
    self.title.upcase
  end

end
