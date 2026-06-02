module mod0                   ! 1)
integer(8)::n=8        ! 4)
integer,parameter::t=8        ! 4)
namelist/nm/n
end module mod0
module mod1                   ! 2) , 7)
  use mod0,only:nm         ! 3) , 4)
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
  real(kind=8)       :: a            ! 8)
contains
     module subroutine sub()
     if (kind(a)/=8) print *,1001
write(1,nm)
     end subroutine sub
end submodule submod

program main
use mod1
call sub
call chk
print *,'sngg313n : pass'
end program
subroutine chk
namelist /nm/ n
rewind 1
read(1,nm)
if (n/=8) print *,101
end
