program main
  real(kind=8),dimension(1:64) :: a,b,res

  call init(b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
    if (i/=7 .and. i/=9) then
    if (((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0D-15)) then
       print *, "NG"
    endif
    endif
  enddo
  print *, "OK"
end program main

subroutine init(b,res)
  real(kind=8),dimension(1:64) :: b,res
  real(kind=8),parameter :: pzero=z'0'
  real(kind=8),parameter :: mzero=z'8000000000000000'
  real(kind=8),parameter :: pinf=z'7ff0000000000000'
  real(kind=8),parameter :: minf=z'fff0000000000000'
  real(kind=8),parameter :: pnan=z'7ff8000000000000'
  real(kind=8),parameter :: mnan=z'fff8000000000000'
  real(kind=8),parameter :: overflow=z'40862e4189374bc7'
  real(kind=8),parameter :: before_overflow=z'40862e4189374bc6'
  real(kind=8),parameter :: underflow=z'c08628b645a1cac1'
  real(kind=8),parameter :: before_underflow=z'c08628b645a1cac0'
  real(kind=8),parameter :: res_before_overflow=z'7FEFFA297CAB7694'
  real(kind=8),parameter :: res_before_underflow=z'00080128AE2BC166'

  b(1) = pzero
  res(1) = 1._8
  b(2) = mzero
  res(2) = 1._8
  b(3) = pinf
  res(3) = pinf
  b(4) = minf
  res(4) = 0._8
  b(5) = pnan
  res(5) = pnan
  b(6) = mnan
  res(6) = mnan
  b(7) = overflow
  res(7) = pinf
  b(8) = before_overflow
  res(8) = res_before_overflow
  b(9) = underflow
  res(9) = 0._8




  b(10) = pzero
  res(10) = 1._8



  do i=11,64
     b(i) = 0._8
     res(i) = 1._8
  enddo
end subroutine init
  


subroutine test(a,b)
  real(kind=8), dimension(1:64) :: a,b

  do i=1,64
     a(i) = dexp(b(i))
  enddo
end subroutine test
