
  integer(kind=8),target,dimension(5) :: t1 = (/1,2,3,4,5/)
  real(kind=4),target,dimension(3,2) :: t2 = reshape((/1.0,2.0,3.0,4.0,5.0,6.0/), (/3,2/))
  integer(kind=8),pointer,dimension(:) :: p1
  real(kind=4),pointer,dimension(:,:) :: p2
  data p1 /t1/
  data p2 /t2/

  if (t1(2).ne.p1(2)) print *,'err'
  if (p1(4).ne.4) print *,'err'
  print *, p1

  if (t2(2,2).ne.p2(2,2)) print *, 'err'
  if (p2(3,2).ne.6.0) print *, 'err'
  print *, p2

end program
