class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_type, :time_of_event, :login, :user_id, :repo_name, :repo_url, :git_event_id
end
