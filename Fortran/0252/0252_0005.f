      module m
      type ty
      integer :: ii=2
      end type
      end module

      call sub()
      contains
      subroutine sub()
      use m
      interface operator(.xor.)
      integer function fun1(d1,d2)
      use m
      type(ty),intent(in) :: d1
      integer,intent(IN) :: d2
      end function
      end interface
      type(ty) :: obj1
      block
      integer :: ii = 6
      interface operator(.eor.)
      integer function fun2(d1,d2)
      use m
      type(ty),intent(in) :: d1
      character(LEN=*),intent(IN) :: d2
      end function
      end interface
        block
        if((obj1.xor.ii) /=8)print*,101  
          block
            if((obj1.xor.ii)*(obj1.eor.'block') /=80)print*,102  
          end block
        end block
        if((obj1.eor.'abc') /=6)print*,103  
      end block
      print*,"pass"
      end subroutine
      end

      integer function fun1(d1,d2)
      use m
      type(ty),intent(in) :: d1
      integer,intent(IN) :: d2
      fun1 = d1%ii + d2
      end function

      integer function fun2(d1,d2)
      use m
      type(ty),intent(in) :: d1
      character(LEN=*),intent(IN) :: d2
      fun2 = d1%ii * len(d2)
      end function
