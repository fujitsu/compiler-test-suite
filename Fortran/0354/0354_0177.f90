program main
  real * 8 a(20),b(20),c(20),d(20),e(20)
  real * 8 dd
  integer flag

  n = 20
  call ini0(a,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-1 ok "
  else
     print *," test-1 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-1 ok "
  else
     print *," test-1 ng "    
  endif

  dd = 0.0
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-2 ok "
  else
     print *," test-2 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-2 ok "
  else
     print *," test-2 ng "    
  endif
  
  dd = 0.5
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-3 ok "
  else
     print *," test-3 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-3 ok "
  else
     print *," test-3 ng "    
  endif

  dd = 3.1415
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-4 ok "
  else
     print *," test-4 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-4 ok "
  else
     print *," test-4 ng "    
  endif

  dd = -0.5
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-5 ok "
  else
     print *," test-5 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-5 ok "
  else
     print *," test-5 ng "    
  endif

  dd = -1.0
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-6 ok "
  else
     print *," test-6 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-6 ok "
  else
     print *," test-6 ng "    
  endif

  dd = -2.0
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-7 ok "
  else
     print *," test-7 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-7 ok "
  else
     print *," test-7 ng "    
  endif

  dd = -3.1415
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-8 ok "
  else
     print *," test-8 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-8 ok "
  else
     print *," test-8 ng "    
  endif

  dd = 100.0
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-9 ok "
  else
     print *," test-9 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-9 ok "
  else
     print *," test-9 ng "    
  endif

  dd = -10.0
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-10 ok "
  else
     print *," test-10 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-10 ok "
  else
     print *," test-10 ng "    
  endif

  dd = -20.0
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-11 ok "
  else
     print *," test-11 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-11 ok "
  else
     print *," test-11 ng "    
  endif

  dd = -100.0
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-12 ok "
  else
     print *," test-12 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-12 ok "
  else
     print *," test-12 ng "    
  endif

  dd = 1e10
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-13 ok "
  else
     print *," test-13 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-13 ok "
  else
     print *," test-13 ng "    
  endif

  dd = -1e10
  call ini2(a,dd,n)
  call test(a,b,c,d,e,n)
  call check(b,d,n,flag)
  if (flag .eq.0) then
     print *," test-14 ok "
  else
     print *," test-14 ng "    
  endif
  call check(c,e,n,flag)
  if (flag .eq.0) then
     print *," test-14 ok "
  else
     print *," test-14 ng "    
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

subroutine test(a,b,c,d,e,n)
  real(kind=8), dimension(1:n) :: a,b,c,d,e

  do i=1,n
     b(i) = dsin(a(i))
     c(i) = dcos(a(i))
  enddo

  do i=1,n
     d (i) = dsin(a(i))
     e (i) = dcos(a(i))
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
