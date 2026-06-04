subroutine sub(a,b,p,l)
  integer l
  REAL A(L),B(L),P(L),Q
  !OCL LOOP_FISSON_TARGET
  DO I=1,L
    Q = A(I) + B(I)
    P(I) = P(I) + Q
  ENDDO
end subroutine sub

program main
  integer, parameter :: n = 100
  real a(n),b(n),c(n)
  a=1
  b=2
  c=3
  call sub(a,b,c,n)
  if (.not.all(c==6)) then
     print *, c
  endif
  print *, "PASS"
end program main
