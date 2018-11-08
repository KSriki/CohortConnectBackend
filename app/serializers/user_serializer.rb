class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :login, :avatar_url, :bio, :html_url, :email, :github_identifier
end
