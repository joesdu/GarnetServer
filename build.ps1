$gh = "ghcr.io/joesdu/";
$name="garnet" ;


$tag=":latest" ;
$imagename =$base + $name + $tag ;
$imagename ;

docker buildx create --use ;

docker buildx build --platform linux/amd64,linux/arm64 -f ./GarnetServer/Dockerfile -t $imagename . --progress plain --push ;