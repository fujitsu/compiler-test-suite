program main
  real(kind=4),dimension(1:64) :: a,b
  intrinsic log10
  call init(b)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
    call check(a(i), b(i), log10)
  enddo
  print *, "OK"
end program main

subroutine init(b)
  real(kind=4),dimension(1:64) :: b
  real(kind=4),parameter :: pzero=z'00000000'
  real(kind=4),parameter :: mzero=z'80000000'
  real(kind=4),parameter :: minf =z'ff800000'




  real(kind=4),parameter :: mnan =z'ffc00000'
  real(kind=4),parameter :: ovr=z'7f7fffff'
  real(kind=4),parameter :: und=z'00800000'
  real(kind=4),parameter :: before_ovr=z'7f7ffffe'
  real(kind=4),parameter :: before_und=z'007ffffe'



  b(1) =  1.0_4
  b(2) =  1.1_4
  b(3) =  1.8_4
  b(4) =  0.1_4
  b(5) =  0.4_4
  b(6) =  1.00000000000001_4
  b(7) =  0.99999999999999_4
  b(8) =  1.99999999999999_4
  b(9) =  2.0_4
  b(10) =  2.00000000000001_4
  b(11) =  0.49999999999999_4
  b(12) =  0.5_4
  b(13) =  0.50000000000001_4
  b(14) =  5.0_4
  b(15) =  100.1_4
  b(16) =  0.1_4
  b(17) =  0.0001_4
  b(18) =  1.49999999999999_4
  b(19) =  1.5_4
  b(20) =  1.50000000000001_4
  b(21) =  0.74999999999999_4
  b(22) =  0.75_4
  b(23) =  0.75000000000001_4
  b(24) =  3.40282347E+38
  b(25) =  -1.0_4
  b(26) =  pzero
  b(27) =  mzero

  b(28) =  1.0_4



  b(29) =  minf

  b(30) =  1.0_4



  b(31) =  mnan
  b(32) =  ovr
  b(33) =  und
  b(34) =  before_ovr
  b(35) =  before_und


  do i=36,64
     b(i) =  1.0_4
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
     if (((abs(res -  fsres)/abs(res)) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  endif
end subroutine check
  


subroutine test(a,b)
  real(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = log10(b(i))
  enddo
end subroutine test
