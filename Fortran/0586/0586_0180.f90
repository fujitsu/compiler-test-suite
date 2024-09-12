  interface
    pure function func_IF(x)
      real, intent(in) :: x
      real :: func_IF
    end function
    subroutine sub()
    end subroutine
  end interface
  procedure(func_IF), pointer :: ptr => func_IF
  procedure(sub), pointer :: ptr1  => sub
  if(associated(ptr).neqv..true.)print*,"101"
  if(associated(ptr1).neqv..true.)print*,"102"
  call ptr1()
  print*,"PASS"
contains
  elemental function myfun1(x) result(r)
    real, intent(in) :: x
    real :: r    
    if(associated(ptr)) r = ptr(x)
  end function
end
    pure function func_IF(x)
      real, intent(in) :: x
      real :: func_IF
    end function
    subroutine sub()
    end subroutine
