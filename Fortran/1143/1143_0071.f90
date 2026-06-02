module mod0                   ! 1)
integer,parameter::n=8        ! 4)
end module mod0
module mod1                   ! 2) , 7)
  use mod0                    ! 3) , 4)
  private                     ! 5)
  public::sub
integer,parameter::k=4 
  interface
     module subroutine sub()
     end subroutine sub
  end interface
end module mod1

submodule (mod1) submod          ! 6), 7)
       implicit none
  real(kind=k) :: b            ! 8)
  real(kind=n) :: a            ! 8)
contains
     module subroutine sub()
     end subroutine sub
end submodule submod

program main
use mod1
call sub
print *,'sngg212n : pass'
end program
