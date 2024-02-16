module m1
type ty2
integer :: n
end type ty2
contains
subroutine s01(obj2)
type ty1
complex :: c(1)
end type ty1
type(ty1):: obj1
type(ty2):: obj2
write(1,*) 1
rewind 1
read(1,*) obj1%c(obj2%n:obj2%n)%re
if (obj1%c(1)%re/=1) print *,108
end subroutine
 end
 use m1
 type(ty2):: o2
 o2%n=1
 call s01(o2)
 print *,'pass'
 end
