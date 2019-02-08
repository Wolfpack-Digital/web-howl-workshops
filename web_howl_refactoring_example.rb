class ClientsController < ApplicationController
  def new

  end

  def index
  end

  def edit
  end

  def show

  end
  def destroy
  end

  def update
  end
  def create
  end

  def initialize_codes_array
    disposition_codes = []
    ['S', 'W', 'U'].each do |code|
      disposition_codes << code if disposition_codes.where(state: code).any?
    end

    return disposition_codes
  end


end

# Prefered order of the controller methods:
# - index
# - show
# - new
# - edit
# - create
# - update
# - destroy

# Refactored initialize_codes_array method
def initialize_codes_array
  ['S', 'W', 'U'].each_with_object([]) do |code, arr|
    arr << code if disposition_codes.where(state: code).any?
  end
end
