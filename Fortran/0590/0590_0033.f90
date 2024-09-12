module m1
type ty
integer :: aa
end type ty
contains
subroutine s(dmy1,dmy2,dmy3)
class(*), VALUE :: dmy1
class(ty), VALUE :: dmy2
integer, optional :: dmy3

select type (dmy1)
type is(integer)
if (dmy1 /= 6) print *,201
dmy1 = 3
type is(real)
if (dmy1 /= 5.5) print *,202
dmy1 = 8.8
end select
select type(dmy2)
type is(ty)
if(dmy2%aa /= 4) print*, 203
dmy2%aa = 8
end select
end subroutine
end
    
program main
use m1
integer :: a 
real :: b
type(ty) :: objTY
objTY = ty(4)

a=6
b=5.5

call s(a,objTY)
if (a /= 6) print *,101, a
if(objTY%aa /= 4) print *, 102

call s(b,objTY)
if (.not.(b >= 5.4 .and. b <= 5.6 )) print *,103, b
if(objTY%aa /= 4) print *, 104
print*, "PASS"
end
