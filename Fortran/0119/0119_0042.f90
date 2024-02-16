program main
  integer(kind=8) i
  real(kind=8) array1(20),array2(20),ans(20)
  array1 = 5.0
  array2 = 2.0
  do i=1,20
     ans(i) = array1(i) / array2(i)
  end do
  if (ans(3) == 2.5) then
     print *,"OK"
  else
     print *,"NG"
  end if
end program main
