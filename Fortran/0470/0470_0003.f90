subroutine sub()
integer,target,save :: ttt=1
integer,pointer :: p
data p /ttt/
if (p.ne.ttt) print *,'err'
print *,'pass'
end
call sub()
end
