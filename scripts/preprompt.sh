
if jj root &>/dev/null; then
  OP_ID=`jj cur-op`
  if [[ $OP_ID != $_PROMPT_LAST_OP_ID ]] && [[ `jj pure op log -n1 --no-graph -T snapshot` != "true" ]]; then
    PS1="\n`jj --no-pager pure color preprompt`\n$PS1"
  fi
  export _PROMPT_LAST_OP_ID="$OP_ID"
fi
