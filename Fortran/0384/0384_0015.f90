module mod
  interface
    subroutine sub() bind(C)
    end subroutine
    subroutine sub2() 
    end subroutine
  end interface
  procedure(sub),bind(C) :: ppp
  procedure(sub) :: ppp2
  procedure(sub2) :: ppp3
end
use mod
print *,'pass'
end


    subroutine ppp() bind(C)
    end subroutine
    subroutine ppp2() bind(c)
    end subroutine
    subroutine ppp3()
    end subroutine
