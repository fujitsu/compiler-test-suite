  type ty
   procedure(func_IF), pointer,nopass :: ptr => func_IF
   procedure(sub), pointer,nopass :: ptr1  => sub
   procedure(func_IF), pointer,nopass :: ptr2 => func_IF
  end type
  interface
     function func_IF(x)
      real, intent(in) :: x
      real :: func_IF
    end function
    subroutine sub()
    end subroutine
  end interface
  type(ty)::obj(5)
  if(associated(obj(5)%ptr).neqv..true.)print*,"101"
  if(associated(obj(5)%ptr1).neqv..true.)print*,"102"
  if(associated(obj(1)%ptr2).neqv..true.)print*,"103"
  call obj(1)%ptr1()
  if(obj(1)%ptr(10.1).ne.20.0)print*,"201"
  if(obj(1)%ptr2(10.1).ne.20.0)print*,"202"
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
