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

 type(struct_ty)::var
 real(8)::ddd=1.0D0
contains
function f(d) result(r)
 type(ext)::d,r
 r=d
end
subroutine s1(var)
 type(struct_ty)::var
var%disp_16_data=1
if (any(var%disp_16_data/=1)) print *,'error-0'
var%class_alc = f(ext(ddd))
if (any(var%disp_16_data/=1)) print *,'error-1'

select type(p=>var%class_alc)
 type is(ext)
  if (p%d/=1) print *,62002
 class default
    print *,'error-2'
end select
end
end
use m1
call s1(var)

print *,'sngg484r : pass'
end program
