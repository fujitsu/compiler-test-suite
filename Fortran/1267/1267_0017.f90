subroutine sub(a1,a2,a3,a4,a5,b1,b2,b3,b4,b5, &
     c1,c2,c3,c4,c5,d1,d2,d3,d4,d5,e,f,n)
  real a1(n),a2(n),a3(n),a4(n),a5(n),b1(n),b2(n),b3(n),b4(n),b5(n)
  real c1(n),c2(n),c3(n),c4(n),c5(n),d1(n),d2(n),d3(n),d4(n),d5(n),e(n),f(n)
  DO I=1,N
     E(I) = A1(I)*B1(I) + A2(I)*B2(I) + A3(I)*B3(I) + A4(I)*B4(I) + A5(I)*B5(I)
     F(I) = C1(I)*D1(I) + C2(I)*D2(I) + C3(I)*D3(I) + C4(I)*D4(I) + C5(I)*D5(I)
  ENDDO
end subroutine sub

program main
  integer, parameter:: n = 100
  real a1(n),a2(n),a3(n),a4(n),a5(n),b1(n),b2(n),b3(n),b4(n),b5(n)
  real c1(n),c2(n),c3(n),c4(n),c5(n),d1(n),d2(n),d3(n),d4(n),d5(n),e(n),f(n)

  a1=1;a2=1;a3=1;a4=1;a5=1;b1=1;b2=1;b3=1;b4=1;b5=1
  c1=1;c2=1;c3=1;c4=1;c5=1;d1=1;d2=1;d3=1;d4=1;d5=1
  e=1;f=1

  call sub(a1,a2,a3,a4,a5,b1,b2,b3,b4,b5, &
       c1,c2,c3,c4,c5,d1,d2,d3,d4,d5,e,f,n)

  if (.not.all(e.eq.5)) then
     print *, 'NG1', e
  endif
  if (.not.all(f.eq.5)) then
     print *, 'NG2', f
  endif
  print *, 'PASS'
end program main
