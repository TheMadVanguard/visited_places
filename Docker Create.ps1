$Y = Get-Date -Format "yyyy"
$M = Get-Date -Format "MM"
$D = Get-Date -Format "dd"

$date = "$Y.$M.$D"


cd "C:\GitHub\TheMadVanguard\visited_places"
docker build -t themadvanguard/visited_places:latest .
docker build -t themadvanguard/visited_places:$date .

docker push themadvanguard/visited_places:latest
docker push themadvanguard/visited_places:$date