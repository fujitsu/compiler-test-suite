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

  if (ans == ans_block .and. ans == ans_block_outer) then 
     print *, "OK"
  else
     print *, "NG"
  end if
end program main

subroutine sub(a,b,c,n)
  integer i,n
  real a(n), b(n), c(n)
  real,volatile :: s_tmp,t_tmp  
  real,volatile :: s,t
  external subsub
  intrinsic sin
  do i=1,n
     s_tmp = a(i) - b(i)
     t_tmp = a(i) / b(i)
     call subsub()
     s = sin(a(i)) + b(i)
     t = a(i) * sin(b(i))
     c(i) = s + t + s_tmp + t_tmp
  end do
end subroutine sub

subroutine sub_block(a,b,c,n)
  integer i,n
  real a(n), b(n), c(n)
  real,volatile :: s,t
  do i=1,n
     s = a(i) - b(i)
     t = a(i) / b(i)
     block
     real,volatile :: s,t
     external subsub
     intrinsic sin
     call subsub()
     s = sin(a(i)) + b(i)
     t = a(i) * sin(b(i))
     c(i) = s + t
     end block
     c(i) = c(i) + s + t
  end do
  
end subroutine sub_block

subroutine subsub()
end subroutine subsub
