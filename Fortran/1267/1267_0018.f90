subroutine sub1(a,b,c,d,p,q,x,y,n)
  real a(n),b(n),c(n),d(n),p(n),q(n),x(n),y(n),s1,s2
  !OCL LOOP_FISSION_TARGET(CL)
  DO I=1,N
     S1 = A(I) + B(I)
     S2 = C(I) + D(I)
     P(I) = S1 + Q(I)
     X(I) = S2 + Y(I)
  ENDDO
end subroutine sub1

subroutine sub2(a,b,c,d,p,q,x,y,n)
  real a(n),b(n),c(n),d(n),p(n),q(n),x(n),y(n),s1,s2
  !OCL LOOP_FISSION_TARGET(LS)
  DO I=1,N
     S1 = A(I) + B(I)
     S2 = C(I) + D(I)
     P(I) = S1 + Q(I)
     X(I) = S2 + Y(I)
  ENDDO
end subroutine sub2

subroutine sub3(a,b,c,d,n)
  real a(n,n),b(n,n),c(n,n),d(n,n)

  DO I=1,N
     DO J=1,N
        A(I,J) = B(I,J)
        !OCL FISSION_POINT(1)
        C(I,J) = D(I,J)
     ENDDO
  ENDDO
end subroutine sub3

program main
  integer, parameter :: n = 100
  real a(n),b(n),c(n),d(n),p(n),q(n),x(n),y(n)
  real aa(n,n), bb(n,n), cc(n,n), dd(n,n)
  a=0;b=0;c=0;d=0;p=0;q=0;x=0;y=0
  aa=0; bb=0; cc=0; dd=0
  a=1; b=2; c=3; d=4; q=5; y=6;
  call sub1(a,b,c,d,p,q,x,y,n)
  if (.not.all(p==8)) then
     print *, p
  endif
  if (.not.all(q==5)) then
     print *, q
  endif
  a=1; b=2; c=3; d=4; q=5; y=6;
  call sub2(a,b,c,d,p,q,x,y,n)
  if (.not.all(p==8)) then
     print *, p
  endif
  if (.not.all(q==5)) then
     print *, q
  endif
  bb = 1
  dd = 2
  call sub3(aa,bb,cc,dd,n)
  if (.not.all(aa==1)) then
     print *, aa
  endif
  if (.not.all(cc==2)) then
     print *, cc
  endif
  print *, "PASS"
end program main
