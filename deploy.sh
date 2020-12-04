if [ -z "$1" ]; then
  echo "fail: version is required"
  exit
fi

if [[ ! "$1" =~ ^[0-9]*\.[0-9]*\.[0-9]*$ ]]; then
  echo "fail: version $1 is not valid, should be x.y.z"
  exit
fi

sed -i "" "s#[0-9]*\.[0-9]*\.[0-9]*#$1#g" lib/cocoapods-lbci/gem_version.rb

git add .
git commit -am "update and deploy version to $1\n$2"
git push origin master

git tag "$1"
git push origin --tags
