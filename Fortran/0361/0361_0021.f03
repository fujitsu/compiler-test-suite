module mod01
  implicit none
contains
  subroutine sub(p01,p02,p03)
    integer :: p01,p02,p03
    p01 = 100
    p02 = 100
    p03 = 100
    return
  end subroutine 
end module

  use mod01
  implicit none
  integer :: p01,p02,p03

  p01 = 0
  p02 = 0
  p03 = 0

  call sub(p01,p02,p03)
  if (p01==100 .and. p02==100 .and. p03==100) then
    print *,"pass"
  else
    print *,"err"
  end if
end program
