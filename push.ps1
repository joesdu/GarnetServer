$base="dygood/" ;
$name="garnet" ;

# 推送有版本号的
$tag=":latest" ;
$imagename =$base + $name + $tag ;
$imagename ;
docker push $imagename ;

# 推送latest
#$tag=":latest" ;
#$imagename =$base + $name + $tag ;
#$imagename ;
#docker push $imagename ;