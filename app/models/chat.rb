# frozen_string_literal: true

class Chat < ApplicationRecord
  after_create_commit -> { broadcast_prepend_to "chats" }
end
