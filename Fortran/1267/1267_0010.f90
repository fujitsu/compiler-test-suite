subroutine sub(a,b,n)
  real a(n),b(n)
  !OCL PREFETCH_LINE(4)
  DO I=1,N
     A(I) = B(I)
  ENDDO
end subroutine sub

program main
  integer, parameter :: n = 100
  real a(n),b(n)
  a = 0
  b = 1
  call sub(a,b,n)
  if (all(a.eq.1)) then
     print *,'PASS'
  else 
     print *,'NG'
  endif
end
