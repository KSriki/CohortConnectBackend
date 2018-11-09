require 'rest-client'
require 'byebug'
require 'json'


gitHubEventsApiDocs = "https://developer.github.com/v3/activity/events/"
gitHubUsersApiDocs = "https://developer.github.com/v3/users/"
apiUrl = "/users/:username/events"

userNames = {
  dru: "drubaby",
  srikant: "ksriki",
  adam: "adamwjo",
  trevor: "trevor-jameson",
  angelica: "carowink91",
  samTheDriver: "samthedriver",
  samAshtar: "samashtar",
  patti: "patti-c",
  brian: "brianhkang1",
  jake: "jb5595"
}

#may have to log in first with
# curl -u "username" https://api.github.com

userNames.each do |user, username|
  resp = RestClient.get('https://api.github.com/users/' + username )
  resp = JSON.parse(resp)

  login = resp["login"]
  name = resp["name"]
  avatar_url = resp["avatar_url"]
  bio = resp["bio"]
  html_url = resp["html_url"]
  github_id = resp["id"]

  User.create( name: name, login: login, avatar_url: avatar_url, bio: bio, html_url: html_url, github_identifier: github_id )
end

userNames.each do |user, username|
  resp = RestClient.get('https://api.github.com/users/' + username + '/events?per_page=5')
  resp = JSON.parse(resp)
  resp.each do |resp|
    git_event_id = resp["id"]
    type = resp["type"]
    user_name = resp["actor"]["login"]
    repo_name = resp["repo"]["name"]
    repo_url = resp["repo"]["url"]
    created_at = resp["created_at"]

    user_id = User.find_by_login(user_name).id
    Event.create(user_id: user_id, git_event_id: git_event_id, repo_url: repo_url, repo_name: repo_name, login: user_name, time_of_event: created_at, event_type: type)

  end
end
