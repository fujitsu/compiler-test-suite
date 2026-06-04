module mod0                   ! 1)
integer(8)       ::z=8        ! 4)
integer(8)       ::t=8        ! 4)
end module mod0
module mod1                   ! 2) , 7)
  use mod0,n=>z         ! 3) , 4)
  private                     ! 5)
  public::sub
integer,parameter::k=4 
  interface
     module subroutine sub()
     end subroutine sub
  end interface
  interface
     module subroutine sub2()
     end subroutine sub2
  end interface
end module mod1

submodule (mod1) submod          ! 6), 7)
       implicit none
  real(kind=k) :: b            ! 8)
  real(kind=kind(n)) :: a            ! 8)
contains
     module subroutine sub()
if (kind(a)/=8)print *,8001
if (kind(b)/=4)print *,8021
call sub2
     end 
end 
submodule (mod1:submod) submod2          ! 6), 7)
       implicit none
  real(kind=k) :: b            ! 8)
  real(kind=kind(n)) :: a            ! 8)
contains
     module subroutine sub2()
if (kind(a)/=8)print *,8001
if (kind(b)/=4)print *,8021
     end 
end 

program main
use mod1
call sub
print *,'sngg081o : pass'
end program
