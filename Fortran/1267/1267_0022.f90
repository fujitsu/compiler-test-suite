SUBROUTINE SUB(A, B, C, D, E, N)
  REAL*8 A(N), B(N), C(N)
  REAL*8 D(N), E(N)
  DO I=1,N
     A(I)=B(I)+C(I)
  ENDDO
  DO I=1,N
     D(I)=A(I)+E(I)
  ENDDO
END SUBROUTINE SUB

subroutine sub2(a, b, c, d, e, f, g, h, l, n)
  real*8 a(n), b(n), c(n), d(n), e(n), f(n)
  integer g(n), h(n), l(n)
  !OCL LOOP_NOFUSION
  DO I=1,N
     A(I)=B(I)+C(I)
  ENDDO
  DO J=1,N
     D(J)=E(J)+F(J)
  ENDDO
  DO K=1,N
     G(K)=H(K)+L(K)
  ENDDO
end subroutine sub2


program main
  integer, parameter :: n = 100
  real*8 a(n), b(n), c(n), d(n), e(n), f(n)
  integer g(n), h(n), l(n)

  b = 1; c = 2; e = 3;
  call sub(a,b,c,d,e,n)
  if (.not.all(a==3)) then
     print *, a
  endif
  if (.not.all(d==6)) then
     print *, d
  endif
  b = 1; c = 2; e = 3; f = 4;
  h = 5; l = 6;
  call sub2(a,b,c,d,e,f,g,h,l,n)
  if (.not.all(a==3)) then
     print *, a
  endif
  if (.not.all(d==7)) then
     print *, d
  endif
  if (.not.all(g==11)) then
     print *, g
  endif
  print *, "PASS"
end program main
