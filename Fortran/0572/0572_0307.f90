 module m    
type t
     integer::a
    end type
  end module

  program main
  use m
    type(t)::obj
    call sub2(obj)
  contains
    subroutine sub2(aa)
      type(*)::aa(..)
     if(rank(aa) /=0)print*,101
    print*,"PASS"
    end subroutine
  end

