# clone the example repo
git clone git@github.com:aerabi/events.git
cd events

# get a list of all authors
git log --format='%an <%ae>' | sort | unique

# get LoC per commit for one author
git log --author="Mohammad-Ali A'râbi <aerabi@gmx.de>" --oneline --shortstat

# get LoC per file for one author
git log --author="Mohammad-Ali A'râbi <aerabi@gmx.de>" --pretty=tformat: --numstat

# get all LoC per author email
git ls-files -z | xargs -0n1 git blame -w --show-email | perl -n -e '/^.*?\((.*?)\s+[\d]{4}/; print $1,"\n"' | sort -f | uniq -c | sort -n

# get number of commits per author
git shortlog
git shortlog --numbered --summary
