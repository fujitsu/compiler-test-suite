module mod01
  interface
    subroutine sub01()
    end subroutine
  end interface
end module
module mod02
  interface
    subroutine sub02() bind(C)
    end subroutine
  end interface
end module
use mod01
use mod02
!$pragma c(sub01)
!$pragma c(sub02)
end
