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
   type (ext ), allocatable :: xx(:)

 type(struct_ty)::var
 real(8)::ddd=1.0D0
 integer::k,km=2

var%disp_16_data=[1,2]
allocate(ext::xx(2))
if (any(var%disp_16_data/=[1,2])) print *,'error-0'
xx = ext(ddd)
var%class_alc = [(xx,k=1,km-1),(xx,k=1,km-1)]      
if (any(var%disp_16_data/=[1,2])) print *,'error-1'

select type(p=>var%class_alc)
 type is(ext)
    if(size(p)/=4) print *,2920
    if(p(1)%d/=1) print *,2921,p(1)%d
    if(p(2)%d/=1) print *,2922,p(2)%d
    if(p(3)%d/=1) print *,2923,p(3)%d
    if(p(4)%d/=1) print *,2924,p(4)%d
 class default
    print *,'error-2'
end select
    if(xx(1)%d/=1) print *,3921,xx(1)%d
    if(xx(2)%d/=1) print *,3922,xx(2)%d




print *,'sngg415r : pass'
end program
