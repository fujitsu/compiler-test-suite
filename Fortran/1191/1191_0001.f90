program main
 implicit none
 type :: base
 end type

 type, extends(base) :: ext
   real(8) :: d
 end type

 type :: struct_ty   
   class(base), allocatable :: scalar
 end type 

 type(struct_ty)::var(2)
 real(8)::ddd=1.0D0

var(2)%scalar = ext(ddd) 

select type(p=>var(2)%scalar)
 type is(ext)
 class default
    print *,'error-2'
end select

print *,'sngg594r : pass'
end program
