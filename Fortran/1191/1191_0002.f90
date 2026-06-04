program main
 implicit none
 type :: base
 end type

 type, extends(base) :: ext
   real(8) :: d
 end type

 type :: struct_ty1                                ! 1)
   class(base), allocatable :: scalar    ! 2), 3)
 end type 
 type :: struct_ty2                                ! 1)
   class(base), allocatable :: array(:)  ! 2), 3)
 end type 

 type(ext       )::e_var
 type(struct_ty1)::var1(2)
 type(struct_ty2)::var2(2)
 real(8)::ddd=1.0D0

var1(2)%scalar = ext(ddd) 

select type(p=>var1(2)%scalar)
 type is(ext)
 class default
    print *,'error-2'
end select

e_var=ext(ddd)

var2(2)%array = [e_var,e_var]  

select type(p=>var2(2)%array)
 type is(ext)
 class default
    print *,'error-4'
end select




print *,'sngg595r : pass'
end program
