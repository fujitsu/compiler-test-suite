Module op
real, private :: a
contains
subroutine lop(a,c)
real, intent(out) :: c
c=a+2+kol()
write(1,*) a,c
end subroutine
function kol()
kol=a+4
end function
subroutine set()
a=0
end subroutine
end module
program main
use op
real a,c
a=67.8
call set
call lop(a,c)
print *,'pass'
end
