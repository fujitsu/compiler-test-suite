program main
  real(kind=8),dimension(1:64) :: a,b
  intrinsic dlog10
  call init(b)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
    call check(a(i), b(i), dlog10)
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
  real(kind=8),parameter :: ovr=z'7fefffffffffffff'
  real(kind=8),parameter :: und=z'0010000000000000'



  b(1) =  1.0_8
  b(2) =  1.1_8
  b(3) =  1.8_8
  b(4) =  0.1_8
  b(5) =  0.4_8
  b(6) =  1.00000000000001_8
  b(7) =  0.99999999999999_8
  b(8) =  1.99999999999999_8
  b(9) =  2.0_8
  b(10) =  2.00000000000001_8
  b(11) =  0.49999999999999_8
  b(12) =  0.5_8
  b(13) =  0.50000000000001_8
  b(14) =  5.0_8
  b(15) =  100.1_8
  b(16) =  0.1_8
  b(17) =  0.0001_8
  b(18) =  1.49999999999999_8
  b(19) =  1.5_8
  b(20) =  1.50000000000001_8
  b(21) =  0.74999999999999_8
  b(22) =  0.75_8
  b(23) =  0.75000000000001_8
  b(24) =  2.2250738585072015D-308
  b(25) =  1.797693D+308
  b(26) =  2.2250738585072015D-308*0.5
  b(27) =  -1.0_8
  b(28) =  pzero
  b(29) =  mzero
  b(30) =  pinf
  b(31) =  minf
  b(32) =  pnan
  b(33) =  mnan
  b(34) =  ovr
  b(35) =  und


  do i=36,64
     b(i) =  1.0_8
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
     a(i) = dlog10(b(i))
  enddo
end subroutine test
