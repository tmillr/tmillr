# GitHub CLI api
# https://cli.github.com/manual/gh_api

OWNER=tmillr
REPO=tmillr
SHA="$(git log -1 '--pretty=%H')"

gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" \
  /repos/$OWNER/$REPO/statuses/$SHA \
  -f state='error' \
 # -f target_url='https://example.com/build/status' \
 -f description='Very very bad!' \
 -f context='format'
