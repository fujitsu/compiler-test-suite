module m
  interface operator(.user.)
     integer function fun(a)
       integer,intent(in) :: a
     end function fun
  end interface
  interface
     module subroutine sub
     end subroutine
  end interface
end

submodule(m)smod
contains
  module subroutine sub
    if (.user.1 /= 1) print *,'ng'
  end subroutine sub
end

use m
call sub
print *,'pass'
end

integer function fun(a)
  integer,intent(in)::a
  fun=a
end
