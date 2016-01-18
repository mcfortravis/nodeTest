url="http://$1:8080/rest/client/login"
uploadurl="http://$1:8080/rest/apps/upload"
content="Content-Type: application/json"
appupload="filedata=@$2"
res=`curl -i -H "$content" -d '{name: "admin@default.com", password: "password", accountName: "default", locale: "en"}' -X POST "$url"`
h1=$(echo "$res" | sed -n '3p' | sed 's/^.*Set-//g' | sed 's/;Path.*$//g')
h2=$(echo "$res" | sed -n '4p' | sed 's/.\{1\}$//')
curl -H "$h1" -H "Content-Type:multipart/form-data" -H "$h2" -F "$appupload" "$uploadurl"
