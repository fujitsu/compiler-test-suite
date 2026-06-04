subroutine sub1(a, b, c, n, x)
  real*8 a(n), b(n), c(n), x 
  DO I=1,N
     !OCL UNSWITCHING
     IF (X == 0) THEN
        A(I) = B(I)
     ELSE
        A(I) = C(I)
     ENDIF
  ENDDO
end subroutine sub1

subroutine sub2(a, b, c, d, n, x)
  real*8 a(n), b(n), c(n), d(n), x
  DO I=1,N
     IF (X == 0) THEN
        A(I) = B(I)
        !OCL UNSWITCHING
     ELSE IF (X == 1) THEN
        A(I) = C(I)
     ELSE
        A(I) = D(I)
     ENDIF
  ENDDO
end subroutine sub2


program main
  integer, parameter :: n = 100
  real*8 a(n), b(n), c(n), d(n), x

  a = 0; b = 1; c = 2;
  x = 1;
  call sub1(a,b,c,n,x)
  if (.not.all(a.eq.2)) then
     print *,"NG"
  endif
  a = 0; b = 1; c = 2; d = 3;
  x = 1;
  call sub1(a,b,c,n,x)
  if (.not.all(a.eq.2)) then
     print *,"NG"
  endif
  print *, "PASS"
end program main
