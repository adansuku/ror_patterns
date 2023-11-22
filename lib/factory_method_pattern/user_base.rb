# frozen_string_literal: true

class UserBase
  def first_name
    raise('not implemented')
  end

  def last_name
    raise('not implemented')
  end
end

class Admin < UserBase; end
class Member < UserBase; end
class Guest < UserBase; end
