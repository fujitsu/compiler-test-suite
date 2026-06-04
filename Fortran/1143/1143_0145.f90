module mod0                   ! 1)
integer(8)       ::z=8        ! 4)
integer(8)       ::t=8        ! 4)
namelist/zn/z
end module mod0
module mod1                   ! 2) , 7)
  use mod0,n=>z,nm=>zn         ! 3) , 4)
  private::n
private
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
  real(kind=kind(n)) :: a            ! 8)
contains
     module subroutine sub()
if (kind(a)/=8)print *,8001
if (kind(b)/=4)print *,8021
write(1,nm)
     end subroutine sub
end submodule submod

program main
use mod1
call sub
call chk
print *,'sngg316n : pass'
end program
subroutine chk
integer(8)       ::z
namelist /zn/ z
rewind 1
read(1,zn)
if (z/=8) print *,101
end
