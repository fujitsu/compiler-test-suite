program main
 implicit none
 type :: base
 end type

 type, extends(base) :: ext
   real(8) :: d
 end type

 type :: struct_ty
   integer::   disp_00(4)
   integer::   disp_16_data(20)
   class(base), allocatable :: class_alc_scalar
   class(base), allocatable :: class_alc_array(:)
 end type 

 type(struct_ty)::var
 real(8)::ddd=1.0D0

var%disp_16_data=1

var%class_alc_scalar = ext(ddd)
if (any(var%disp_16_data/=1)) print *,'error-1',var%disp_16_data

select type(p=>var%class_alc_scalar)
 type is(ext)
 class default
    print *,'error-2'
end select

var%disp_16_data=1

var%class_alc_array = [ext(ddd),ext(ddd)]
if (any(var%disp_16_data/=1)) print *,'error-3',var%disp_16_data

select type(p=>var%class_alc_array)
 type is(ext)
 class default
    print *,'error-4'
end select

print *,'sngg553r : pass'
end program
