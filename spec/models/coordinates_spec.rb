require 'rails_helper'

RSpec.describe Coordinates, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :latitude }
    it { is_expected.to have_db_column :longitude }
  end

  describe "Relations" do
    it { is_expected.to belong_to :trail }
  end
end