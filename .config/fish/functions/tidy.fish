function tidy --wraps='doas apk -U upgrade && doas apk fix && doas apk cache clear' --description 'alias tidy doas apk -U upgrade && doas apk fix && doas apk cache clear'
  doas apk -U upgrade && doas apk fix && doas apk cache clear $argv
        
end
