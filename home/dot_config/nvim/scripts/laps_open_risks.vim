execute "vs " . g:laps_dir . "/tech_doc/risks.tex"
execute "norm! /ri.1.1.tex\r:nohlsearch\rzt"
lcd %:p:h
" Add all risk tables to local args
arglocal
%argdelete
argadd ../tables/ri.*
