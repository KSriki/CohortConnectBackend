require 'rest-client'
require 'byebug'
require 'json'

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
  email = resp["email"]
  github_id = resp["id"]


  puts login # aka username
  puts name
  puts avatar_url
  puts bio ##sometimes blank
  puts html_url
  puts email ##always blank
  puts github_id
  puts "*********"
end
