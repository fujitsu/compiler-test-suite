module mod0                   ! 1)
integer(8)::n=8        ! 4)
namelist/nm/n
end module mod0
module mod1                   ! 2) , 7)
  use mod0
  !!!private::nm        ! 5)
private::n
  interface
     module subroutine sub()
     end subroutine sub
  end interface
end module mod1

submodule (mod1) submod          ! 6), 7)
implicit none
contains
     module subroutine sub()
write(1,nm)
     end subroutine sub
end submodule submod

program main
use mod1
call sub
call chk
print *,'sngg300n : pass'
end program
subroutine chk
namelist /nm/ n
rewind 1
read(1,nm)
if (n/=8) print *,101
end
