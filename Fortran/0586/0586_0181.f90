  procedure(func_IF), pointer :: ptr => func_IF
  procedure(sub), pointer :: ptr1  => sub
  procedure(func_IF), pointer :: ptr2 => func_IF
  interface
     function func_IF(x)
      real, intent(in) :: x
      real :: func_IF
    end function
    subroutine sub()
    end subroutine
  end interface
  if(associated(ptr).neqv..true.)print*,"101"
  if(associated(ptr1).neqv..true.)print*,"102"
  if(associated(ptr2).neqv..true.)print*,"103"
  call ptr1()
  if(ptr(10.1).ne.20.0)print*,"201"
  if(ptr2(10.1).ne.20.0)print*,"202"
  print*,"PASS"
end
    function func_IF(x)
      real, intent(in) :: x
      real :: func_IF
      func_IF =20
    end function
    subroutine sub() 
     print*,"PASS"
    end subroutine
