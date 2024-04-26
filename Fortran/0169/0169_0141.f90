module mod
  logical s_called,f_called
  interface
    module subroutine s()
    end subroutine
    module function f()
      integer f
    end function
  end interface
end

submodule(mod)smod
contains
  module subroutine s()
    s_called = .true.
  end subroutine
  module function f()
    integer f
    f_called = .true.
    f=0
  end function
end

use mod
s_called = .false.
f_called = .false.
call s
if (f() /= 0) print *,100
if (s_called .and. f_called) print *,'pass'
end
