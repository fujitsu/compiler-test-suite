subroutine  foo   
  type ty
     character(2) :: var1
     procedure(proc), pointer,nopass :: pointer_test
  end type 

  contains
  integer function proc(this)
  type(ty), intent(inout) :: this
  proc = 0
  this%var1 = '12'
  end function
end 

print *,'pass'
end
