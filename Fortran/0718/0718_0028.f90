module mod01
  interface
    subroutine sub01(arg1)
       interface
          subroutine arg1()
          end subroutine
       end interface
    end subroutine
  end interface
end module
module mod02
  interface
    subroutine sub02(arg2) bind(C)
       interface
          subroutine arg2() bind(C)
          end subroutine
       end interface
    end subroutine
  end interface
end module
use mod01
use mod02
!$pragma c(sub01)
!$pragma c(sub02)
!$pragma c(arg1)
!$pragma c(arg2)
end
