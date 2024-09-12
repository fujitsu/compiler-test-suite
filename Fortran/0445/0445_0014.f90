module mod
  type ty
     integer :: var1(2,3)
     procedure(proc), pointer :: p
  end type 

  contains
  integer function proc(this)
  class(ty), intent(inout) :: this
  proc = 0
  this%var1 = 1
  end function
end 


use mod
print *,'pass'
end
