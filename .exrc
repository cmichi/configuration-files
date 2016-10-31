set number
set autoindent
set ruler
set showmode
set report=1
set wraplen=75

set ignorecase

set filec=\	
set cedit=

map gg 1G
map vb :bg

map vp :set wraplen=0 noautoindent
map vP :set wraplen=72 autoindent

ab cljs console.log("foo " + JSON.stringify(foo, null, 2));
