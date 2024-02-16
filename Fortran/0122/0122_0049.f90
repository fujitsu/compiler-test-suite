program main
  integer i,n
  real a(10), b(10), c(10), c_block(10), ans, ans_block
  n = 10
  ans = 0
  ans_block = 0
  do i = 1,n
     a(i) = n
     b(i) = n
  end do
  call sub(a,b,c,n)
  call sub_block(a,b,c_block,n)
  do i = 1,n
     ans = ans + c(i)
  end do
  do i = 1,n
     ans_block = ans_block + c_block(i)
  end do
  
  if (ans == ans_block ) then 
     print *, "OK"
  else
     print *, "NG"
  end if
end program main

subroutine sub(a,b,c,n)
  integer i,n
  real a(n), b(n), c(n)
  real,volatile :: s
  real :: t(n)
  do i=1,n
     s = a(i) + b(i)
     t(i) = a(i) * b(i)
     c(i) = s + sqrt(t(i))
  end do
end subroutine sub

subroutine sub_block(a,b,c_block,n)
  integer i,n
  real a(n), b(n), c_block(n)
  do i=1,n
     block
     real,volatile :: s
     real :: t(n)
     s = a(i) + b(i)
     t(i) = a(i) * b(i)
     c_block(i) = s + sqrt(t(i))
     end block
  end do
end subroutine sub_block
