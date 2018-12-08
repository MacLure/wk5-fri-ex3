class Picture < ApplicationRecord

    validates :artist, :url, presence: true
    validates :title, length: {in: 3..20}
    validates :url, uniqueness: true

    validates :url, format: { with: /\Ahttp/i, message: "Url must start with 'http'."}


end
