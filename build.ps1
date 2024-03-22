$base="dygood/" ;
$name="garnet" ;

# 构建有版本号的
$tag=":latest" ;
$imagename =$base + $name + $tag ;
$imagename ;
docker build -f ./GarnetServer/Dockerfile -t $imagename . ;

# 构建 latest
#$tag=":latest" ;
#$imagename =$base + $name + $tag ;
#$imagename ;
#docker build -f ./Dockerfile -t $imagename . ;