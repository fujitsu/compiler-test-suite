  module m
    type t
      integer::a
      contains
!      procedure,nopass::sub
      final::sub
    end type
  contains
    subroutine sub(i)
type  (t),intent(inout) :: i
    end subroutine
  end module

  program main
  use m
    type(t)::obj
!  contains
interface aaa
    subroutine sub2(aa,ii)
      type(*)::aa
    end subroutine
    subroutine sub1(aa,rr)
      use m
      type(t)::aa
    end subroutine
end interface
!    call sub2(obj,1)        ! ERROR
    call aaa (obj,1.0) 
print *,'pass'
  end
    subroutine sub1(aa,rr)
      use m
      type(t)::aa
    end subroutine
