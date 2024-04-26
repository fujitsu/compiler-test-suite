  implicit none
  character(len=1) :: chr01
  character(len=2) :: chr02
  chr01 = "1" 
  chr02 = "2" 
  call sub01(chr01,chr02)
  print *,"pass"
contains
  subroutine sub01(p01,p02)
    character(len=1) :: p01
    character(len=2) :: p02
    value :: p01,p02
    p01 = p01
    p02 = p02
    return
  end subroutine
end program
