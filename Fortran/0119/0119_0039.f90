program main
  integer(kind=4) array2(20)
  array2 = 1
  call sub(array2)
end program main

subroutine sub(array2)
  integer(kind=8) i
  integer(kind=4) array1(20),array2(20)
  integer(kind=4) ans(20)
  array1 = -1
  do i=1,20
     ans(i) = iand(array1(i), array2(i))
  end do
  if (ans(3) == 1) then
     print *,"OK"
  else
     print *,"NG"
  end if
end subroutine sub
