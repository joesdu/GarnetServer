$gh = "ghcr.io/joesdu/";
$name="garnet" ;

# 构建有版本号的
$tag=":latest" ;
$imagename =$base + $name + $tag ;
$imagename ;
docker buildx create --use ;
docker buildx build --platform linux/amd64,linux/arm64 -f ./GarnetServer/Dockerfile -t $imagename . --push --progress plain ;

# 构建 latest
#$tag=":latest" ;
#$imagename =$base + $name + $tag ;
#$imagename ;
#docker build -f ./Dockerfile -t $imagename . ;