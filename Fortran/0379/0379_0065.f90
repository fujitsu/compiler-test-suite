module mod
  interface
    subroutine sub() bind(C,name="abc")
    end subroutine
  end interface
  contains
  subroutine msub(sub) bind(C)
    print *,'ok'
  end subroutine
end module
use mod
call msub(1.0)
end
