require 'rails_helper'


RSpec.describe "Customer", type: :request do
  
it "create a customer and redirects to show page" do
 get '/customers/new'
 expect(response).to render_template(:new)
end

end