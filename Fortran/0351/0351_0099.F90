program main
  real(kind=4),dimension(1:64) :: a,b,res

  call init(b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,10
    if (i/=10 .and. i/=7) then
    if (((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0E-7)) then
       print *, "NG"
    endif
    endif

  enddo
  print *, "OK"
end program main

subroutine init(b,res)
  real(kind=4),dimension(1:64) :: b,res
  real(kind=4),parameter :: pzero               =z'00000000'
  real(kind=4),parameter :: mzero               =z'80000000'
  real(kind=4),parameter :: pinf                =z'7f800000'
  real(kind=4),parameter :: minf                =z'ff800000'
  real(kind=4),parameter :: pnan                =z'7fc00000'
  real(kind=4),parameter :: mnan                =z'ffc00000'
  real(kind=4),parameter :: overflow            =z'42b171aa'
  real(kind=4),parameter :: before_overflow     =z'42b171a9'
  real(kind=4),parameter :: underflow           =z'c2b00ed9'
  real(kind=4),parameter :: before_underflow    =z'c2b00ed8'
  real(kind=4),parameter :: res_before_overflow =z'7f7fc88a'
  real(kind=4),parameter :: res_before_underflow=z'00400b7a'


  b(1) = pzero
  res(1) = 1._4
  b(2) = mzero
  res(2) = 1._4
  b(3) = pinf
  res(3) = pinf
  b(4) = minf
  res(4) = 0._4
  b(5) = pnan
  res(5) = pnan
  b(6) = mnan
  res(6) = mnan
  b(7) = overflow
  res(7) = pinf
  b(8) = before_overflow
  res(8) = res_before_overflow
  b(9) = underflow



  res(9) = exp(b(9))	

  b(10) = before_underflow
  res(10) = res_before_underflow


  do i=11,64
     b(i) = 0._4
     res(i) = 1._4
  enddo
end subroutine init
  


subroutine test(a,b)
  real(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = exp(b(i))
  enddo
end subroutine test
