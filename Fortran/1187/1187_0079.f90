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
 end type
   type (ext ), allocatable :: xx(:)
   class(base), allocatable :: class_alc(:)

 type(struct_ty)::var
 real(8)::ddd=1.0D0
  integer::n,m=1

var%disp_16_data=[1,2]
allocate(ext::xx(2))
if (any(var%disp_16_data/=[1,2])) print *,'error-0'
xx = ext(ddd)
class_alc = [(xx,n=1,m)]
if (any(var%disp_16_data/=[1,2])) print *,'error-1'

select type(p=>class_alc)
 type is(ext)
    if(size(p)/=2) print *,2920
    if(p(1)%d/=1) print *,2921,p(1)%d
    if(p(2)%d/=1) print *,2922,p(2)%d
 class default
    print *,'error-2'
end select
    if(xx(1)%d/=1) print *,3921,xx(1)%d
    if(xx(2)%d/=1) print *,3922,xx(2)%d




print *,'sngg458r : pass'
end program
