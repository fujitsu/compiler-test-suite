integer(kind=1) :: p1
integer(kind=2) :: p2
integer(kind=4) :: p4

p1 = 0
p2 = 0
p4 = 0

call sub(p1,p2,p4)
  print *,"pass"

contains
  subroutine sub(p1,p2,p4)
    integer(kind=1) :: p1
    integer(kind=2) :: p2
    integer(kind=4) :: p4
    value :: p1,p2,p4
    p1 = 1
    p2 = 1
    p4 = 1
    return
  end subroutine 
end program
