#define N_BASE 100000

subroutine test1(a,b,c,d,res1,res2,n)
  real(8),dimension(n) :: a,b,c,d,res1,res2
  real(8) :: tmp1, tmp2
  do i=1, n
     tmp1 = a(i) + b(i)
     res1(i) = tmp1 + c(i)
     tmp2 = a(i) * b(i) - c(i)
     res2(i) = tmp2 + d(i)
  end do
end subroutine test1

subroutine test2(a,b,c,d,res1,res2)
  integer(4),parameter :: n=N_BASE-1
  real(8),dimension(n) :: a,b,c,d,res1,res2
  real(8) :: tmp1, tmp2
  do i=1, n
     tmp1 = a(i) + b(i)
     res1(i) = tmp1 + c(i)
     tmp2 = a(i) * b(i) - c(i)
     res2(i) = tmp2 + d(i)
  end do
end subroutine test2

subroutine test3(a,b,c,d,res1,res2)
  integer(4),parameter :: n=N_BASE
  real(8),dimension(n) :: a,b,c,d,res1,res2
  real(8) :: tmp1, tmp2
  do i=1, n
     tmp1 = a(i) + b(i)
     res1(i) = tmp1 + c(i)
     tmp2 = a(i) * b(i) - c(i)
     res2(i) = tmp2 + d(i)
  end do
end subroutine test3

subroutine test4(a,b,c,d,res1,res2)
  integer(4),parameter :: n=N_BASE+1
  real(8),dimension(n) :: a,b,c,d,res1,res2
  real(8) :: tmp1, tmp2
  do i=1, n
     tmp1 = a(i) + b(i)
     res1(i) = tmp1 + c(i)
     tmp2 = a(i) * b(i) - c(i)
     res2(i) = tmp2 + d(i)
  end do
end subroutine test4

program main
  integer(4),parameter:: n=N_BASE+1
  real(8),dimension(n) :: a,b,c,d,res1,res2

  call init_1d(a,b,c,d,res1,res2,n)
  call test1(a,b,c,d,res1,res2,n)
  call result(res1, res2, n)
  
  call init_1d(a,b,c,d,res1,res2,N_BASE-1)
  call test2(a,b,c,d,res1,res2)
  call result(res1, res2, N_BASE-1)

  call init_1d(a,b,c,d,res1,res2,N_BASE)
  call test3(a,b,c,d,res1,res2)
  call result(res1, res2, N_BASE)

  call init_1d(a,b,c,d,res1,res2,N_BASE+1)
  call test4(a,b,c,d,res1,res2)
  call result(res1, res2, N_BASE+1)

end program main

subroutine init_1d(a,b,c,d,res1,res2,n)
  real(8),dimension(n) :: a,b,c,d,res1,res2
  do i=1,n
     a(i) = i
     b(i) = i+n
     c(i) = i+n*2
     d(i) = i+n*3
     res1(i) = 0
     res2(i) = 0
  enddo
end subroutine init_1d

subroutine result(test_res1, test_res2, n)
  real(8),dimension(n) :: test_res1, test_res2
  real(8),dimension(n) :: a,b,c,d,res1,res2
  real(8) :: tmp1, tmp2
  integer error

  interface
     logical function is_equal_r8(x,y)
       real(8)::x,y
     end function is_equal_r8
  end interface
  
  call init_1d(a,b,c,d,res1,res2,n)

  do i=1, n
     tmp1 = a(i) + b(i)
     res1(i) = tmp1 + c(i)
     tmp2 = a(i) * b(i) - c(i)
     res2(i) = tmp2 + d(i)
  end do

  error = 0
  do i=1, n
     if (.not.is_equal_r8(res1(i), test_res1(i))) then
        error = error+1
     endif
     if (.not.is_equal_r8(res2(i), test_res2(i))) then
        error = error+1 
     endif
  enddo

  if (error.eq.0) then
     print *,"ok"
  else
     print *,"ng"
  endif

end subroutine result

logical function is_equal_r8(x,y)
  real(8)::x,y
  is_equal_r8 = ( abs(x-y)/abs(x) .lt. 1.0E-6)
end function is_equal_r8
