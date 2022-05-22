# Image docker pour Lua avec Busted

`docker pull imega/busted`

`alias dbusted='f(){ docker run --rm -t -v "/$@":/data imega/busted; unset -f f; }; f'`

