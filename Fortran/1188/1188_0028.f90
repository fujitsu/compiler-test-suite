program main
 implicit none
 type :: base
 end type

 type, extends(base) :: ext
   real(8) :: d
 end type

 type :: struct_ty                                 ! 1)
   integer::   disp_00(4)
   integer::   disp_16_data(20)
   class(base), allocatable :: scalar    ! 2), 3)
   class(base), allocatable :: array(:)  ! 2), 3)
 end type 

 type(ext)::e_var
 type(struct_ty)::var
 real(8)::ddd=1.0D0
var%disp_16_data=1

var%scalar = ext(ddd) ! 4), 5), 6), 7-1-1), 7-1-2), 7-1-3), 7-1-4-2)

if (any(var%disp_16_data/=1)) print *,'error-1',var%disp_16_data

select type(p=>var%scalar)
 type is(ext)
 class default
    print *,'error-2'
end select
var%disp_16_data=1
e_var=ext(ddd)

var%array = [e_var,e_var]  ! 4), 5), 6), 7-2-1), 7-2-2), 7-2-3-3)

if (any(var%disp_16_data/=1)) print *,'error-3',var%disp_16_data

select type(p=>var%array)
 type is(ext)
 class default
    print *,'error-4'
end select




print *,'sngg551r : pass'
end program
