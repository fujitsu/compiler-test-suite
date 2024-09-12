
  integer(kind=8),target :: t1 = 5
  integer(kind=8),target :: t2(3) = (/10,20,30/)
  integer(kind=8) :: aa,bb,cc
  integer(kind=8),pointer :: p1
  integer(kind=8),pointer :: p2(:)

  data aa,p1,bb,p2,cc /77,t1,88,t2,99/

  print *, aa,bb,cc
  print *, p1
  print *, p2
end program
