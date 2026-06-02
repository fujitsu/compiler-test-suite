program main
 implicit none
 type :: base
 end type

 type, extends(base) :: ext
   real(8) :: d
 end type

 type :: struct_ty
   integer::   disp_00(4)
   integer::   disp_16_data(2)
   class(base), allocatable :: class_alc(:)
 end type

 type(struct_ty)::var(2,2)
 real(8)::ddd=1.0D0
  integer::n=2

var(n,n)%disp_16_data=[1,2]
!!!!allocate(ext::var%class_alc(2))
if (any(var(n,n)%disp_16_data/=[1,2])) print *,'error-0'
var(n,n)%class_alc = [ext(ddd),ext(ddd+1)]
if (any(var(n,n)%disp_16_data/=[1,2])) print *,'error-1'

select type(p=>var(n,n)%class_alc)
 type is(ext)
    if(p(1)%d/=1) print *,2921,p(1)%d
    if(p(2)%d/=2) print *,2922,p(2)%d
 class default
    print *,'error-2'
end select

print *,'sngg451r : pass'
end program
