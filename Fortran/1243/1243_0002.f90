program main
  integer :: kk, arr(10000)
  real :: xx(10000)/10000*1.0/
  arr = 0
  do concurrent (kk=1:10000, arr(kk)>=5)
     xx(kk) = sqrt(xx(kk))
  end do
  if (any(xx/=1)) print *,102
  print *,'sngp011 : pass'
end program main
