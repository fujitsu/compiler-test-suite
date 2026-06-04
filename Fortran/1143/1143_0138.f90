module mod0                   ! 1)
integer(8)       ::z=8        ! 4)
integer,parameter::t=8        ! 4)
namelist/nm/z
end module mod0
module mod1                   ! 2) , 7)
  use mod0,x=>nm        ! 3) , 4)
  private
integer,parameter::k=4 
public::sub
  interface
     module subroutine sub()
     end subroutine sub
  end interface
end module mod1

submodule (mod1) submod          ! 6), 7)
       implicit none
  real(kind=k) :: b            ! 8)
  real(kind=kind(z)) :: a            ! 8)
contains
     module subroutine sub()
if (kind(a)/=8) print *,1001
write(1,x)
z=1
     end subroutine sub
end submodule submod

program main
use mod1
use mod0
call sub
if (z/=1) print *,9001
call chk
print *,'sngg307n : pass'
end program
subroutine chk
integer(8)       ::z
namelist /nm/ z
rewind 1
read(1,nm)
if (z/=8) print *,101
end
