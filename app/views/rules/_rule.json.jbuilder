json.extract! rule, :id, :title, :description, :points, :created_at, :updated_at
json.url club_rule_url(rule.club_id, rule, format: :json)
