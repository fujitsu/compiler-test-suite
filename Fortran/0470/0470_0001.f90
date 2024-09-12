integer,target :: ttt=1
integer,pointer :: p
data p /ttt/
p=>ttt
if (p.ne.ttt) print *,'err'
print *,'pass'
end
