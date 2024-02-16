program main
  integer(kind=8) i
  integer(kind=8) array1(20),ans(20)
  array1 = 2
  do i=1,20
     ans(i) = lshift(array1(i), lshift(array1(i),1))
  end do
  if (ans(3) == 32) then
     print *,"OK"
  else
     print *,"NG"
  end if
end program main
