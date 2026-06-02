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
   class(base), allocatable :: class_alc(:,:)
 end type
   class(ext ), allocatable :: xx(:,:)

 type(struct_ty)::var
 real(8)::ddd=1.0D0

var%disp_16_data=[1,2]
!!!!allocate(ext::var%class_alc(2))
if (any(var%disp_16_data/=[1,2])) print *,'error-0'
allocate(xx(2,2))
xx = ext(ddd)
var%class_alc =xx      
if (any(var%disp_16_data/=[1,2])) print *,'error-1'

select type(p=>var%class_alc)
 type is(ext)
    if(size(p)/=4) print *,2920
    if(p(1,1)%d/=1) print *,2921
 class default
    print *,'error-2'
end select
select type(p=>xx)
 type is(ext)
    if(p(2,2)%d/=1) print *,3921
 class default
    print *,'???'
end select




print *,'sngg453r : pass'
end program
