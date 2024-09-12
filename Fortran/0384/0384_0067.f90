module m1
   interface operator(//)
      module procedure c12,c13
   end interface
  contains
   logical function c12(a1,a2)
    character(*),intent(in):: a1(:),a2(:,:)
   end function
   logical function c13(a1,a2)
    character(*),intent(in):: a1(:),a2(:,:,:)
   end function

  subroutine sss()
   interface
   function func()
    integer,dimension(1) :: func
   end function
  end interface
  call sub(func)
  end subroutine

  subroutine sub(p1)
  interface
   function func1()
    integer,dimension(1) :: func1
   end function
  end interface
   procedure(func1) :: p1
  end subroutine

 end

print *,'pass'
end


   function func1()
    integer,dimension(1) :: func1
   end function
   function func()
    integer,dimension(1) :: func
   end function
