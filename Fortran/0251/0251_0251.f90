module mod1
integer::ii=1
contains
subroutine sub
integer::jj=2
block
integer::jj=3
print*,"jj=",jj
jj=jj+1
call sub2
end block
end subroutine
subroutine sub2
block
integer::kk=4
print*,"kk=",kk
kk=kk+1
end block 
end subroutine
end module

use mod1
call sub
block
call sub
end block
end program
