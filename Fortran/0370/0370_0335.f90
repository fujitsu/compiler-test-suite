
  integer(kind=8),target :: t1 = 5
  integer(kind=8),target :: t2(6) = (/10,20,30,40,50,60/)
  integer(kind=8) :: aa,bb,cc
  integer(kind=8),pointer :: p0
  integer(kind=8),pointer :: p1
  integer(kind=8),pointer :: p2(:)
  integer(kind=8),pointer :: p3(:)
  integer(kind=8),pointer :: p4(:)

  data aa,p0,p1,bb,p2,cc,p3,p4 /77,t1,t2(6),88,t2,99,t2(2:4),t2(2:6:2)/

  print *, aa,bb,cc
  print *, p0
  print *, p1
  print *, p2
  print *, p3
  print *, p4
end program
