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

 type(struct_ty)::var
 real(8)::ddd=1.0D0

var%disp_16_data=[1,2]
if (any(var%disp_16_data/=[1,2])) print *,'error-0'
allocate(ext::var%class_alc(2))
var%class_alc = [ext(ddd),ext(ddd)]
if (any(var%disp_16_data/=[1,2])) print *,'error-1'

select type(p=>var%class_alc)
 type is(ext)
 class default
    print *,'error-2'
end select

print *,'sngg462r : pass'
end program
