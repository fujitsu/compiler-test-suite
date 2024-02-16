program main
  integer i,n
  real a(10), b(10), c(10), ans, ans_block, ans_block_outer
  n = 10
  ans = 0
  ans_block = 0
  ans_block_outer = 0
  do i = 1,n
     a(i) = n
     b(i) = n
  end do
  call sub(a,b,c,n)
  do i = 1,n
     ans = ans + c(i)
  end do
  block
  call sub_block(a,b,c,n)
  do i = 1,n
     ans_block = ans_block + c(i)
  end do
  end block
  call sub_block(a,b,c,n)
  do i = 1,n
     ans_block_outer = ans_block_outer + c(i)
  end do

  if ( abs(ans - ans_block) .le. 0.000001 .and. abs(ans - ans_block_outer) .le. 0.000001) then
     print *, "OK"
  else
     print *, "NG"
  end if
end program main

subroutine sub(a,b,c,n)
  integer i,n
  real a(n), b(n), c(n)
  real:: s(n),t(n)
  intrinsic sin,cos
  do i=1,n
     s(i) = sin(a(i)) + cos(b(i))
     t(i) = cos(a(i)) * sin(b(i))
     c(i) = s(i) + t(i)
  end do
end subroutine sub

subroutine sub_block(a,b,c,n)
  integer i,n
  real a(n), b(n), c(n)
  do i=1,n
     block
     real:: s(n),t(n)
     intrinsic sin,cos
     s(i) = sin(a(i)) + cos(b(i))
     t(i) = cos(a(i)) * sin(b(i))
     c(i) = s(i) + t(i)
     end block
  end do

end subroutine sub_block
