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
 integer::k
   class(ext ), allocatable :: scalar
   class(ext ), allocatable :: array(:)

var%disp_16_data=1

  scalar= ext(ddd)
!!var%scalar = ext(ddd) ! 4), 5), 6), 7-1-1), 7-1-2), 7-1-3), 7-1-4-2)
  var%scalar = scalar

if (any(var%disp_16_data/=1)) print *,'error-1',var%disp_16_data

k=0
select type(p=>var%scalar)
 type is(ext)
k=1
 class default
    print *,'error-2'
end select
if (k/=1) print *,1901
var%disp_16_data=1
e_var=ext(ddd)

  array=[e_var,e_var]
!var%array = [e_var,e_var]  ! 4), 5), 6), 7-2-1), 7-2-2), 7-2-3-3)
  var%array=array

if (any(var%disp_16_data/=1)) print *,'error-3',var%disp_16_data

k=0
select type(p=>var%array)
 type is(ext)
  k=1
 class default
    print *,'error-4'
end select
if (k/=1) print *,1900




print *,'sngg570r : pass'
end program
