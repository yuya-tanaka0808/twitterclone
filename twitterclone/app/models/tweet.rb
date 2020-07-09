class Tweet < ApplicationRecord
  validates :content, length: { in: 1..140, message: "1~140文字の間で入力してください"}
end
