require 'rails_helper'

RSpec.describe User, type: :model do

#associations
  it { is_expected.to have_and_belong_to_many(:dashboards).dependent(:destroy) }
  it { is_expected.to have_and_belong_to_many(:cards) }
  it { is_expected.to have_many(:owned_dashboards).dependent(:nullify) }

 #columns
it { is_expected.to have_db_column(:email).of_type(:string) }
it { is_expected.to have_db_column(:password).of_type(:integer) }
it { is_expected.to have_db_column(:username).of_type(:string) }


end
