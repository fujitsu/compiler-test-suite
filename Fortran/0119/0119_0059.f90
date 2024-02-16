program main
  integer(kind=8) i
  integer(kind=8) array1(20), array2(20), ans(20)
  array1 = 16
  array2 = 2
  do i=1,20
     ans(i) = rshift(array1(i), rshift(array2(i),1))
  end do
  if (ans(3) == 8) then
     print *,"OK"
  else
     print *,"NG"
  end if
end program main
