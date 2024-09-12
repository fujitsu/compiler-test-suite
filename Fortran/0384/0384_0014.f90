module mod
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C) :: ppp
end module
subroutine ppp() bind(c)
end subroutine


module modaaa
  interface
    subroutine sub1() bind(C)
    end subroutine
  end interface
  procedure(sub1),bind(C) :: ppp1
end module
subroutine ppp1() bind(c)
print *,'pass'
end subroutine

    subroutine sub1() bind(C)
     print *,'err'
    end subroutine

use modaaa
call ppp1()
end
