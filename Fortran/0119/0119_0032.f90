program main
  integer(kind=8) i
  integer(kind=4) array1(20),ans(20)
  array1 = -1
  do i=1,20
     ans(i) = abs(array1(i))
  end do
  if (ans(3) == 1) then
     print *,"OK"
  else
     print *,"NG"
  end if
end program main
