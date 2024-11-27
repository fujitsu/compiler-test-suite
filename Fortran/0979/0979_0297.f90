character(kind=1,len=1) :: p1,p2,p3

p1 = "0"
p2 = "0"
p3 = "0"

call sub(p1,p2,p3)
  print *,"pass"

contains
  subroutine sub(p1,p2,p3)
    character(kind=1,len=1) :: p1,p2,p3
    value :: p1,p3
    p1 = "1"
    p2 = "1"
    p3 = "1"
    return
  end subroutine 
end program
