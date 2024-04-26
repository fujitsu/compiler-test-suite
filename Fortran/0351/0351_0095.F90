program main
  real(kind=4),dimension(1:64) :: a,b
  intrinsic atan
  call init(b)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
    call check(a(i), b(i), atan)
  enddo
  print *, "OK"
end program main

subroutine init(b)
  real(kind=4),dimension(1:64) :: b
  real(kind=4),parameter :: pzero=z'0'
  real(kind=4),parameter :: mzero=z'80000000'
  real(kind=4),parameter :: pinf=z'7f800000'
  real(kind=4),parameter :: minf=z'ff800000'
  real(kind=4),parameter :: pnan=z'7fc00000'
  real(kind=4),parameter :: mnan=z'ffc00000'


  b(1) =   0.01_4
  b(2) =   0.24999_4
  b(3) =   0.49999_4
  b(4) =   0.7_4
  b(5) =   1.5_4
  b(6) =   1.E5
  b(7) =   -0.01_4
  b(8) =   -0.7_4
  b(9) =   -1.5_4
  b(10) =  -1.E5
  b(11) =  1.0E-5
  b(12) =  -1.0E-5
  b(13) =  pzero
  b(14) =  mzero
  b(15) =  pinf
  b(16) =  minf
  b(17) =  pnan
  b(18) =  mnan


  do i=19,64
     b(i) = 0._4
  enddo
end subroutine init

subroutine check(res, in, fs)
  real(kind=4) :: res, in, fs, fsres
  external :: fs
  fsres = fs(in)
  if (fsres .eq. 0.0_4) then
     if ((res .ne.  fsres)) then
        print *, "NG"
     endif
  else
     if (((abs(res -  fsres)/abs(res)) .gt. 1.0E-7)) then
        print *, "NG"
     endif
  endif
end subroutine check
  


subroutine test(a,b)
  real(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = atan(b(i))
  enddo
end subroutine test
