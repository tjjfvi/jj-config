
jj_dynconf () {
  echo 'template-aliases.width="'$COLUMNS'"'
}

alias jjj=`which jj`
jj () {
  JJ_CONFIG="$JJ_BASE_CONFIG":<(jj_dynconf) jjj "$@"
}
