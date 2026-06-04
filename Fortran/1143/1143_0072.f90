module mod1                   ! 2) , 7)
  private                     ! 5)
  public::sub
integer,parameter::k=4 
  interface
     module subroutine sub()
     end subroutine sub
  end interface
end module mod1

submodule (mod1) submod          ! 6), 7)
  real(kind=k) :: b            ! 8)
 contains
     module subroutine sub()
     end subroutine sub
end submodule submod

program main
use mod1
call sub
print *,'sngg213n : pass'
end program
