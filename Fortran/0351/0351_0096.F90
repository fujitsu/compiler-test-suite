program main
  real(kind=8),dimension(1:64) :: a,b
  intrinsic datan
  call init(b)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
    call check(a(i), b(i), datan)
  enddo
  print *, "OK"
end program main

subroutine init(b)
  real(kind=8),dimension(1:64) :: b
  real(kind=8),parameter :: pzero=z'0'
  real(kind=8),parameter :: mzero=z'8000000000000000'
  real(kind=8),parameter :: pinf=z'7ff0000000000000'
  real(kind=8),parameter :: minf=z'fff0000000000000'
  real(kind=8),parameter :: pnan=z'7ff8000000000000'
  real(kind=8),parameter :: mnan=z'fff8000000000000'


  b(1) =   0.01_8
  b(2) =   0.7_8
  b(3) =   1.5_8
  b(4) =   1.D5
  b(5) =   -0.01_8
  b(6) =   -0.7_8
  b(7) =   -1.5_8
  b(8) =   -1.D5
  b(9) =   1.0D-5
  b(10) =  -1.0D-5
  b(11) =  pzero
  b(12) =  mzero
  b(13) =  pinf
  b(14) =  minf
  b(15) =  pnan
  b(16) =  mnan


  do i=17,64
     b(i) = 0._8
  enddo
end subroutine init

subroutine check(res, in, fs)
  real(kind=8) :: res, in, fs, fsres
  external :: fs
  fsres = fs(in)
  if (fsres .eq. 0.0_8) then
     if ((res .ne.  fsres)) then
        print *, "NG"
     endif
  else
     if (((abs(res -  fsres)/abs(res)) .gt. 1.0D-15)) then
        print *, "NG"
     endif
  endif
end subroutine check
  


subroutine test(a,b)
  real(kind=8), dimension(1:64) :: a,b

  do i=1,64
     a(i) = datan(b(i))
  enddo
end subroutine test
