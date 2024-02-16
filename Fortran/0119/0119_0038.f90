program main
  integer(kind=8) array2(20)
  array2 = 0
  call sub(array2)
end program main

subroutine sub(array2)
  integer(kind=8) i
  integer(kind=8) array1(20),array2(20)
  integer(kind=8) ans(20)
  array1 = 0
  do i=1,20
     ans(i) = iand(array1(i), array2(i))
  end do
  if (ans(3) == 0) then
     print *,"OK"
  else
     print *,"NG"
  end if
end subroutine sub
