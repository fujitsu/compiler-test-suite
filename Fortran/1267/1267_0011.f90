subroutine sub1(a,b,c,scalar,n,isize)
  real a(n,n), b(n,n), c(n,n), scalar
  DO J=1,N
     DO I=1,ISIZE
        !OCL PREFETCH_WRITE(A(I,J+1),level=1)
        !OCL PREFETCH_READ(B(I,J+1),level=1)
        !OCL PREFETCH_READ(C(I,J+1),level=1)
        A(I,J) = B(I,J) + SCALAR * C(I,J)
     ENDDO
  ENDDO
end subroutine

subroutine sub2(a,b,c,scalar,n,isize)
  real a(n,n), b(n,n), c(n,n), scalar
  DO J=1,N
     !OCL PREFETCH_WRITE(A(1:ISIZE,J+1),level=1)
     !OCL PREFETCH_READ(B(1:ISIZE,J+1),level=1)
     !OCL PREFETCH_READ(C(1:ISIZE,J+1),level=1)
     DO I=1,ISIZE
        A(I,J) = B(I,J) + SCALAR * C(I,J)
     ENDDO
  ENDDO
end subroutine sub2


program main
  integer, parameter:: n = 100
  real a(n,n), b(n,n), c(n,n), scalar
  a = 1
  b = 1
  c = 1
  scalar = 1
  call sub1(a,b,c,scalar,n,n)
  if (all(a.eq.2)) then
  else 
     print *, 'NG1'
  endif
  a = 1
  b = 1
  c = 1
  scalar = 1
  call sub2(a,b,c,scalar,n,n)
  if (all(a.eq.2)) then
  else 
     print *, 'NG2'
  endif
  print *,'PASS'
end
