# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :chat

  after_create_commit -> { broadcast_prepend_to 'messages' }
end
