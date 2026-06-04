subroutine sub(a,b,c,d,n)
  real a(n,n), b(n,n), c(n), d(n,n)
  DO J=1,N
     !OCL UNROLL(8)
     DO I=1,N
        A(I,J) = B(J,I) + C(I) / D(I,J)
     ENDDO
  ENDDO
end subroutine

program main
integer, parameter:: n = 100
  real a(n,n), b(n,n), c(n), d(n,n)
  a = 1
  b = 1
  c = 1
  d = 1
  call sub(a,b,c,d,n)
  if (all(a.eq.2)) then
     print *, 'PASS'
  else 
     print *, 'NG'
  endif
end
