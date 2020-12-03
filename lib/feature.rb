class Feature < ActiveRecord::Base
    has_many :charcter_sheet, through: :character_sheet_feature_joiner
    belongs_to :charcter_sheet_feature_joiner
end
 