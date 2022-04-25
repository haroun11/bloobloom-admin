class FrameCurrency < ApplicationRecord
  belongs_to :frame
  belongs_to :currency
end
