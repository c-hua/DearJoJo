class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  def self.after_commit(*args, &block)
    args.each do |arg|
    case arg[:on]
      when :destroy
        after_destroy &block
      end
    end
  end


  field :name, type: String
  field :date, type: String
  field :time, type: String
  field :message, type: String

  has_mongoid_attached_file :image,
   :styles => {
      :thumb => "100x100#",   # Centrally cropped
      :small  => "150x150>",  # Only squish if it's larger than this
      :elongate => "20x500"}


  validates_attachment_content_type :image,
	 :content_type => /\Aimage\/.*\Z/
end
