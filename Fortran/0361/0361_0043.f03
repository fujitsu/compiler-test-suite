  implicit none
  logical(1) :: log01
  logical(2) :: log02
  logical(4) :: log03
  logical(8) :: log04
  log01 = .true.
  log02 = .true.
  log03 = .false.
  log04 = .false.
  call sub01(log01,log02,log03,log04)
  print *,"pass"
contains
  subroutine sub01(p01,p02,p03,p04)
    logical(1) :: p01
    logical(2) :: p02
    logical(4) :: p03
    logical(8) :: p04
    value :: p01,p02,p03,p04
    p01 = p01
    p02 = p02
    p03 = p03
    p04 = p04
    return
  end subroutine
end program
