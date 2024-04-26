  implicit none
  logical(1) :: log01
  logical(2) :: log02
  logical(4) :: log03
  log01 = .true.
  log02 = .false.
  log03 = .true.
  call sub01(log01,log02,log03)
  print *,"pass"
contains
  subroutine sub01(p01,p02,p03)
    logical(1) :: p01
    logical(2) :: p02
    logical(4) :: p03
    value :: p01,p02,p03
    p01 = p02
    p03 = p02
    p02 = p03
    return
  end subroutine
end program
