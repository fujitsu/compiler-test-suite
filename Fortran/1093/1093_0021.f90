  module m
    type t
      integer::a
      contains
      procedure,nopass::sub
    end type
  contains
    subroutine sub()
      print*,"in TBP"
    end subroutine
  end module
use m
type(t)::obj
interface aaa
  subroutine sub2(aa,ii)
    type(*)::aa
  end subroutine
  subroutine sub1(aa,rr)
    use m
    type(t)::aa
  end subroutine
end interface
call aaa (obj,1.0) 
end
  subroutine sub2(aa,ii)
    type(*)::aa
print *,'NG'
  end subroutine
  subroutine sub1(aa,rr)
    use m
    type(t)::aa
print *,'pass'
  end subroutine
