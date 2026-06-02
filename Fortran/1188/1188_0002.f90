module m1
 implicit none
 type :: base
 end type

 type, extends(base) :: ext
   real(8) :: d
 end type

 type :: struct_ty
   integer::   disp_00(4)
   integer::   disp_16_data(100)
   class(base), allocatable :: class_alc
 end type 
   class(base), allocatable :: class_alc(:)

 type(struct_ty)::var
 real(8)::ddd=1.0D0
 integer::n=2
contains
function f(d) result(r)
 type(ext)::d(:)
 type(ext)::r(size(d))
 r=d
end
subroutine s1(var)
 type(struct_ty)::var
var%disp_16_data=1
if (any(var%disp_16_data/=1)) print *,'error-0'
class_alc = [ext(ddd),ext(ddd+1)]
var%class_alc = class_alc(n)
if (any(var%disp_16_data/=1)) print *,'error-1'

select type(p=>var%class_alc)
 type is(ext)
  if (p%d/=2) print *,62001
 class default
    print *,'error-2'
end select
end
end
use m1
call s1(var)

print *,'sngg525r : pass'
end program
