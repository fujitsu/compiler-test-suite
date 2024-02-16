program main
  integer(kind=8) i
  real(kind=8) array1(20),ans(20)
  array1 = 2
  do i=1,20
     ans(i) = sqrt(array1(i))
  end do
  if (abs(ans(3) - 1.414213562373095) < 0.00001) then
     print *,"OK"
  else
     print *,"NG"
  end if
end program main
