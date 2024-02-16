program main
  real(kind=8) array1(20)
  array1 = 3.0
  call sub(array1)
end program main

subroutine sub(array1)
  integer(kind=8) i
  real(kind=8) array1(20),array2(20),ans(20)
  array2 = array1
  do i=1,20
     ans(i) = array1(i) / array2(i)
  end do
  if (ans(3) == 1.0) then
     print *,"OK"
  else
     print *,"NG"
  end if
end subroutine sub
