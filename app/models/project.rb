class Project < ApplicationRecord
has_many :flows, dependent: :destroy

enum status: {"アイデア募集中":0, "アクション中":1, "未達成":2, "達成":3}
end
