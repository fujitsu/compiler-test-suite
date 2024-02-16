complex :: act = (4,3)
real::xx
call sub(act)
print*,"Pass"
contains
subroutine sub(dmy)
complex, intent(out):: dmy
dmy%re = 2
dmy%im = 5
xx = dmy
if(xx .ne. 2) print*,"121"
end subroutine
end

