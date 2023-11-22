# frozen_string_literal: true

require_relative 'user_base'

# Let´s go to create an endpoint to our application
class Endpoint
  def home(params)
    user = create_user(params[:user_type])
    build_full_name(user)
  end

  private

  def create_user(user_type)
    case user_type
    when 'admin' then Admin.new
    when 'member' then Member.new
    else Guest.new
    end
  end

  def build_full_name(user)
    full_name = [user.first_name, user.last_name].join(' ')
    { name: full_name }.to_json
  end
end
