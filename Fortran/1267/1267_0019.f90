subroutine sub(a1,a2,a3,a4,b1,b2,b3,b4,nn)
  real a1(nn),a2(nn),a3(nn),a4(nn),b1(nn),b2(nn),b3(nn),b4(nn)
  !OCL LOOP_FISSION_TARGET
  !OCL LOOP_FISSION_THRESHOLD(N)
  DO I=1,NN
     A1(I) = A1(I) + B1(I)
     A2(I) = A2(I) + B2(I)
     A3(I) = A3(I) + B3(I)
     A4(I) = A4(I) + B4(I)
  ENDDO
end subroutine sub

program main
  integer, parameter :: n = 100
  real a1(n),a2(n),a3(n),a4(n),b1(n),b2(n),b3(n),b4(n)
  a1=1
  a2=2
  a3=3
  a4=4
  b1=11
  b2=12
  b3=13
  b4=14
  call sub(a1,a2,a3,a4,b1,b2,b3,b4,n)
  if (.not.all(a1==12)) then
     print *, a1
  endif
  if (.not.all(a2==14)) then
     print *, a2
  endif
  if (.not.all(a3==16)) then
     print *, a3
  endif
  if (.not.all(a4==18)) then
     print *, a4
  endif
  print *, "PASS"
end program main
