class User < ApplicationRecord

# from github api:
# collect name, login, avatar_url, bio, html_url, email, id (as github_identifier)

#gitHubUsersApiDocs = "https://developer.github.com/v3/users/"
def save_data_from_api

  api_url = 'https://developer.github.com/v3/users/'
  target_url = 'https://developer.github.com/v3/users/' + username

  
end


end
