subroutine icm01(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c
  do i=1,n
     a(1) = a(1)*b(1) + c(1)
  enddo
end subroutine

subroutine icm08(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c
  do i=1,n
     a(1) = a(1)*b(1) + c(1)
     a(2) = a(2)*b(2) + c(2)
     a(3) = a(3)*b(3) + c(3)
     a(4) = a(4)*b(4) + c(4)
     a(5) = a(5)*b(5) + c(5)
     a(6) = a(6)*b(6) + c(6)
     a(7) = a(7)*b(7) + c(7)
     a(8) = a(8)*b(8) + c(8)
  enddo
end subroutine

subroutine icm09(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c
  do i=1,n
     a(1) = a(1)*b(1) + c(1)
     a(2) = a(2)*b(2) + c(2)
     a(3) = a(3)*b(3) + c(3)
     a(4) = a(4)*b(4) + c(4)
     a(5) = a(5)*b(5) + c(5)
     a(6) = a(6)*b(6) + c(6)
     a(7) = a(7)*b(7) + c(7)
     a(8) = a(8)*b(8) + c(8)
     a(9) = a(9)*b(9) + c(9)
  enddo
end subroutine

subroutine icm50(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c
  do i=1,n
     a(1) = a(1)*b(1) + c(1)
     a(2) = a(2)*b(2) + c(2)
     a(3) = a(3)*b(3) + c(3)
     a(4) = a(4)*b(4) + c(4)
     a(5) = a(5)*b(5) + c(5)
     a(6) = a(6)*b(6) + c(6)
     a(7) = a(7)*b(7) + c(7)
     a(8) = a(8)*b(8) + c(8)
     a(9) = a(9)*b(9) + c(9)
     a(10) = a(10)*b(10) + c(10)
     a(11) = a(11)*b(11) + c(11)
     a(12) = a(12)*b(12) + c(12)
     a(13) = a(13)*b(13) + c(13)
     a(14) = a(14)*b(14) + c(14)
     a(15) = a(15)*b(15) + c(15)
     a(16) = a(16)*b(16) + c(16)
     a(17) = a(17)*b(17) + c(17)
     a(18) = a(18)*b(18) + c(18)
     a(19) = a(19)*b(19) + c(19)
     a(20) = a(20)*b(20) + c(20)
     a(21) = a(21)*b(21) + c(21)
     a(22) = a(22)*b(22) + c(22)
     a(23) = a(23)*b(23) + c(23)
     a(24) = a(24)*b(24) + c(24)
     a(25) = a(25)*b(25) + c(25)
     a(26) = a(26)*b(26) + c(26)
     a(27) = a(27)*b(27) + c(27)
     a(28) = a(28)*b(28) + c(28)
     a(29) = a(29)*b(29) + c(29)
     a(30) = a(30)*b(30) + c(30)
     a(31) = a(31)*b(31) + c(31)
     a(32) = a(32)*b(32) + c(32)
     a(33) = a(33)*b(33) + c(33)
     a(34) = a(34)*b(34) + c(34)
     a(35) = a(35)*b(35) + c(35)
     a(36) = a(36)*b(36) + c(36)
     a(37) = a(37)*b(37) + c(37)
     a(38) = a(38)*b(38) + c(38)
     a(39) = a(39)*b(39) + c(39)
     a(40) = a(40)*b(40) + c(40)
     a(41) = a(41)*b(41) + c(41)
     a(42) = a(42)*b(42) + c(42)
     a(43) = a(43)*b(43) + c(43)
     a(44) = a(44)*b(44) + c(44)
     a(45) = a(45)*b(45) + c(45)
     a(46) = a(46)*b(46) + c(46)
     a(47) = a(47)*b(47) + c(47)
     a(48) = a(48)*b(48) + c(48)
     a(49) = a(49)*b(49) + c(49)
     a(50) = a(50)*b(50) + c(50)
  enddo
end subroutine

program main
  integer,parameter :: n=50, ans1=10, ans2=10, ans3=10, ans4=12
  real(8),dimension(1:n) :: a,b,c
  a=0.2_8
  b=0.2_8
  c=0.2_8
  call icm01(a,b,c,n)
  if (int(sum(a)) .eq. ans1) then
     print *,"ok"
  else
     print *,"ng"
  endif   
  a=0.2_8
  b=0.2_8
  c=0.2_8
  call icm08(a,b,c,n)
  if (int(sum(a)) .eq. ans2) then
     print *,"ok"
  else
     print *,"ng"
  endif   
  a=0.2_8
  b=0.2_8
  c=0.2_8
  call icm09(a,b,c,n)
  if (int(sum(a)) .eq. ans3) then
     print *,"ok"
  else
     print *,"ng"
  endif   
  a=0.2_8
  b=0.2_8
  c=0.2_8
  call icm50(a,b,c,n)
  if (int(sum(a)) .eq. ans4) then
     print *,"ok"
  else
     print *,"ng"
  endif   
end program
