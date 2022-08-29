class PostSerializer < ActiveModel::Serializer
  attributes :title, :content,:short_content
  belongs_to :author
  has_many :post_tags
  has_many :tags , through: :post_tags
  def short_content
    # byebug
    "#{self.object.content[0..39]}..."
  end
end
