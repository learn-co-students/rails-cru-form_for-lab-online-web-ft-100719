class Song < ApplicationRecord
    belongs_to :artist, foreign_key: "artist_id"
    belongs_to :genre, foreign_key: "genre_id"
end
