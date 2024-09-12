module use_mod
 type ty
   integer :: ii = 0 
 end type

 type,extends(ty)::ty1
   integer :: jj  = 0 
 end type

 type,extends(ty1)::ty2
   integer :: kk  = 0 
 end type
end module

program main
implicit none
interface
  function fun()
    use use_mod
    type(ty2) :: fun
  end function
end interface

call sub(fun())
contains

subroutine sub(dum)
  use use_mod
  class(ty) ::dum
  LOGICAL::x
  TYPE(ty2)::obj  

  x=SAME_TYPE_AS(dum,obj)
  if(dum % ii /= 4) then 
    print*,211
  else if(x .neqv. .true.) then
    print*,212
  else
    print*,'pass'
  endif
end subroutine
end

function fun()
  use use_mod
  type(ty2) :: fun
  fun%ii=4
end function

