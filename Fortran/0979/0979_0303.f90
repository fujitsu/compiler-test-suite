subroutine sub(p1,p2,p4,p8)
  logical(kind=1) :: p1
  logical(kind=2) :: p2
  logical(kind=4) :: p4
  logical(kind=8) :: p8
  value :: p1,p2,p4,p8

  p1 = .true.
  p2 = .true.
  p4 = .true.
  p8 = .true.
end

 print *,"pass"
end
