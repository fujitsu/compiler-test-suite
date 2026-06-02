module mod0                   ! 1)
integer,parameter::n=8        ! 4)
end module mod0
module mod1                   ! 2) , 7)
  use mod0                    ! 3) , 4)
  private                     ! 5)
  public::sub
  interface
     module subroutine sub()
     end subroutine sub
  end interface
end module mod1

submodule (mod1) submod          ! 6), 7)
  real(kind=n) :: a            ! 8)
contains
  module subroutine sub()
    real(kind=n) :: b          ! 8)
  end subroutine sub
end submodule submod

program main
use mod1
call sub
print *,'sngg208n : pass'
end program
