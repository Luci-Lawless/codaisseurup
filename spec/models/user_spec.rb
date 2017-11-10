require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
describe "association with attendance" do
  let(:guest_user) { create :user, email: "guest@user.com" }
  let(:host_user) { create :user, email: "host@user.com" }

  let!(:event) { create :event, user: host_user }
  let!(:booking) { create :attendance, event: event, user: guest_user }

  it "has attendance" do
    expect(guest_user.attended_events).to include(event)
  end
end
