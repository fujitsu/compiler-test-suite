program main
  real * 8 a(20),b(20),c(20)
  real * 8 d
  integer flag

  n = 20

  call ini0(a,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-1 ok "
  else
     print *," test-1 ng "    
  endif

  d = 0.0
  call ini2(a,d,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-2 ok "
  else
     print *," test-2 ng "    
  endif

  d = 0.7
  call ini2(a,d,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-3 ok "
  else
     print *," test-3 ng "    
  endif

  d = 1.5
  call ini2(a,d,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-4 ok "
  else
     print *," test-4 ng "    
  endif

  d = 1e5
  call ini2(a,d,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-5 ok "
  else
     print *," test-5 ng "    
  endif

  d = -0.01
  call ini2(a,d,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-6 ok "
  else
     print *," test-6 ng "    
  endif

  d = -1.5
  call ini2(a,d,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-7 ok "
  else
     print *," test-7 ng "    
  endif

  d = -1e5
  call ini2(a,d,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-8 ok "
  else
     print *," test-8 ng "    
  endif

  d = 1e-5
  call ini2(a,d,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-9 ok "
  else
     print *," test-9 ng "    
  endif

  d = 1e-30
  call ini2(a,d,n)
  call test(a,b,c,n)
  call check(b,c,n,flag)
  if (flag .eq.0) then
     print *,"test-10 ok "
  else
     print *," test-10 ng "    
  endif
end program main
subroutine ini0(a,n)
  real(kind=8), dimension(1:n) :: a
  do i=1,n
     a(i) = real(i)
  enddo
end subroutine ini0
subroutine ini2(a,d,n)
  real(kind=8), dimension(1:n) :: a
  real(kind=8)  d
  do i=1,n
     a(i) = d
  enddo
end subroutine ini2

subroutine test(a,b,c,n)
  real(kind=8), dimension(1:n) :: a,b,c

  do i=1,n
     b(i) = datan(a(i))
  enddo

  do i=1,n
    c (i) = datan(a(i))
  enddo

end subroutine test

subroutine check(a,b,n,flag)
  real(kind=8), dimension(1:n) :: a,b
  integer n,flag
  flag = 0

  do i=1,n
     if (a(i).eq.0) then
        if (b(i) .gt. 1.0E-15) then
           flag = flag +1
           print *,i,a(i), b(i)
        endif
     else if (abs((a(i) - b(i))/a(i)) .gt. 1.0E-15) then
       flag = flag +1
        print *,i,a(i), b(i)
     endif
   enddo
end subroutine check
