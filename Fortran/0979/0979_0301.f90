logical(kind=1) :: p1
logical(kind=2) :: p2
logical(kind=4) :: p4

p1 = .true.
p2 = .true.
p4 = .true.

call sub(p1,p2,p4)
  print *,"pass"

contains
  subroutine sub(p1,p2,p4)
    logical(kind=1) :: p1
    logical(kind=2) :: p2
    logical(kind=4) :: p4
    value :: p1,p2,p4
    p1 = .false.
    p2 = .false.
    p4 = .false.
    return
  end subroutine 
end program
