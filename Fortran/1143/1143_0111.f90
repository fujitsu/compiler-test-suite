module mod0                   ! 1)
integer(8)       ::z=8        ! 4)
integer,parameter::t=8        ! 4)
end module mod0
module mod1                   ! 2) , 7)
  use mod0,only:n=>z         ! 3) , 4)
  private::n                     ! 5)
integer,parameter::k=4 
  interface
     module subroutine sub()
     end subroutine sub
  end interface
end module mod1

submodule (mod1) submod          ! 6), 7)
implicit none
  real(kind=k) :: b            ! 8)
  real(kind=kind(n)) :: a            ! 8)
contains
     module subroutine sub()
if (kind(a)/=8) print *,1001
     end subroutine sub
end submodule submod

program main
use mod1
call sub
print *,'sngg262n : pass'
end program
