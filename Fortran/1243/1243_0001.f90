program main
  integer :: i, n, a(3)
  n=3
  a=0
  do concurrent (i=1:n, i/=1)
    a(i)=1
  end do
  if (a(2) /= 1) print *,101
  print *,'sngp002 : pass'
end program main
