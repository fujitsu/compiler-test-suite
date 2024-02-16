program main
  integer(kind=8) i
  integer(kind=4) array1(20),array2(20),ans(20)
  array1 = 0
  array2 = 1
  do i=1,20
     ans(i) = iand(array1(i), array2(i))
  end do
  if (ans(3) == 1) then
     print *,"NG"
  else
     print *,"OK"
  end if
end program main
