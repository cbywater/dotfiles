#######################
# merging into master #
#######################
git checkout master
git pull origin master

git checkout -b BRANCHNAME-squashed
arc land --onto BRANCHNAME-squashed --keep-branch --squash

git checkout master
git pull origin master

git merge BRANCHNAME-squashed
git push origin master

###################
# merging to test #
###################
git checkout test
git pull origin test

git merge BRANCHNAME-squashed
git push origin test

######################
# merging to staging #
######################
git checkout staging
git pull origin staging

git merge BRANCHNAME-squashed
git push origin staging

#########################
# merging to production #
#########################
git checkout production
git pull origin product

git merge staging
git push origin production
