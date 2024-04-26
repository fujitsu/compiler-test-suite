program main
  real(kind=4),dimension(64) :: a,res
  complex(kind=4),dimension(64) :: b
  integer,dimension(1:64) :: mask
  intrinsic cabs
  call init(a,b,res,mask,cabs)
  do i=1,2
     call test(a,b,mask)
  enddo
  do i=1,64
     if(((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,mask,fs)
  real(kind=4),dimension(1:64) :: a,res
  complex(kind=4),dimension(1:64) :: b
  integer,dimension(1:64) :: mask
  real(kind=4),parameter :: pzero=z'0'
  real(kind=4),parameter :: mzero=z'80000000'
  real(kind=4) :: fs
  external :: fs


  b(1) = cmplx( pzero,  pzero, kind=4); res(1) = fs(cmplx( pzero,  pzero, kind=4))
  b(2) = cmplx( pzero,  mzero, kind=4); res(2) = fs(cmplx( pzero,  mzero, kind=4))
  b(3) = cmplx( mzero,  pzero, kind=4); res(3) = fs(cmplx( mzero,  pzero, kind=4))
  b(4) = cmplx( mzero,  mzero, kind=4); res(4) = fs(cmplx( mzero,  mzero, kind=4))

  b(5) = cmplx(  1._4,  pzero, kind=4); res(5) = fs(cmplx(  1._4,  pzero, kind=4))
  b(6) = cmplx( pzero,   1._4, kind=4); res(6) = fs(cmplx( pzero,   1._4, kind=4))
  b(7) = cmplx( -1._4,  pzero, kind=4); res(7) = fs(cmplx( -1._4,  pzero, kind=4))
  b(8) = cmplx( pzero,  -1._4, kind=4); res(8) = fs(cmplx( pzero,  -1._4, kind=4))

  b(9) = cmplx(   1.0_4,   1.0_4, kind=4); res(9) = fs(cmplx(   1.0_4,   1.0_4, kind=4))
  b(10) = cmplx( -1.0_4,  -1.0_4, kind=4); res(10) = fs(cmplx( -1.0_4,  -1.0_4, kind=4))
  b(11) = cmplx(  1.0_4,  -1.0_4, kind=4); res(11) = fs(cmplx(  1.0_4,  -1.0_4, kind=4))
  b(12) = cmplx( -1.0_4,   1.0_4, kind=4); res(12) = fs(cmplx( -1.0_4,   1.0_4, kind=4))

  
  b(13) = cmplx(  10.1_4,   3.1_4, kind=4); res(13) = fs(cmplx(  10.1_4,   3.1_4, kind=4))
  b(14) = cmplx( -10.1_4,   3.1_4, kind=4); res(14) = fs(cmplx( -10.1_4,   3.1_4, kind=4))
  b(15) = cmplx(  10.1_4,  -3.1_4, kind=4); res(15) = fs(cmplx(  10.1_4,  -3.1_4, kind=4))
  b(16) = cmplx( -10.1_4,  -3.1_4, kind=4); res(16) = fs(cmplx( -10.1_4,  -3.1_4, kind=4))

  
  b(17) = cmplx(  1.1_4,   3.1_4, kind=4); res(17) = fs(cmplx(  1.1_4,   3.1_4, kind=4))
  b(18) = cmplx( -1.1_4,   3.1_4, kind=4); res(18) = fs(cmplx( -1.1_4,   3.1_4, kind=4))
  b(19) = cmplx(  1.1_4,  -3.1_4, kind=4); res(19) = fs(cmplx(  1.1_4,  -3.1_4, kind=4))
  b(20) = cmplx( -1.1_4,  -3.1_4, kind=4); res(20) = fs(cmplx( -1.1_4,  -3.1_4, kind=4))

  b(21) = cmplx(  2.E+38,   2.E+38, kind=4); res(21) = fs(cmplx(  2.E+38,   2.E+38, kind=4))
  b(22) = cmplx( -2.E+38,   2.E+38, kind=4); res(22) = fs(cmplx( -2.E+38,   2.E+38, kind=4))
  b(23) = cmplx(  2.E+38,  -2.E+38, kind=4); res(23) = fs(cmplx(  2.E+38,  -2.E+38, kind=4))
  b(24) = cmplx( -2.E+38,  -2.E+38, kind=4); res(24) = fs(cmplx( -2.E+38,  -2.E+38, kind=4))

  b(25) = cmplx(  4.E-38,   4.E-38, kind=4); res(25) = fs(cmplx(  4.E-38,   4.E-38, kind=4))
  b(26) = cmplx( -4.E-38,   4.E-38, kind=4); res(26) = fs(cmplx( -4.E-38,   4.E-38, kind=4))
  b(27) = cmplx(  4.E-38,  -4.E-38, kind=4); res(27) = fs(cmplx(  4.E-38,  -4.E-38, kind=4))
  b(28) = cmplx( -4.E-38,  -4.E-38, kind=4); res(28) = fs(cmplx( -4.E-38,  -4.E-38, kind=4))

  b(29) = cmplx(  2.E+38,   4.E-38, kind=4); res(29) = fs(cmplx(  2.E+38,   4.E-38, kind=4))
  b(30) = cmplx( -2.E+38,   4.E-38, kind=4); res(30) = fs(cmplx( -2.E+38,   4.E-38, kind=4))
  b(31) = cmplx(  2.E+38,  -4.E-38, kind=4); res(31) = fs(cmplx(  2.E+38,  -4.E-38, kind=4))
  b(32) = cmplx( -2.E+38,  -4.E-38, kind=4); res(32) = fs(cmplx( -2.E+38,  -4.E-38, kind=4))

  b(33) = cmplx(  4.E-38,   2.E+38, kind=4); res(33) = fs(cmplx(  4.E-38,   2.E+38, kind=4))
  b(34) = cmplx( -4.E-38,   2.E+38, kind=4); res(34) = fs(cmplx( -4.E-38,   2.E+38, kind=4))
  b(35) = cmplx(  4.E-38,  -2.E+38, kind=4); res(35) = fs(cmplx(  4.E-38,  -2.E+38, kind=4))
  b(36) = cmplx( -4.E-38,  -2.E+38, kind=4); res(36) = fs(cmplx( -4.E-38,  -2.E+38, kind=4))

  
  b(37) = cmplx(  3.0E+38,   3.0E+38, kind=4); res(37) = fs(cmplx(  3.0E+38,   3.0E+38, kind=4))
  b(38) = cmplx( -3.0E+38,   3.0E+38, kind=4); res(38) = fs(cmplx( -3.0E+38,   3.0E+38, kind=4))
  b(39) = cmplx(  3.0E+38,  -3.0E+38, kind=4); res(39) = fs(cmplx(  3.0E+38,  -3.0E+38, kind=4))
  b(40) = cmplx( -3.0E+38,  -3.0E+38, kind=4); res(40) = fs(cmplx( -3.0E+38,  -3.0E+38, kind=4))


  do i=41,64
    b(i) = cmplx( 1._4,  pzero, kind=4); res(i) = fs(cmplx( 1._4,  pzero, kind=4))
  enddo


  do i=1,64
     a(i) = 0._4
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(a,b,mask)
  real(kind=4), dimension(1:64) :: a
  complex(kind=4), dimension(1:64) :: b
  integer,dimension(1:64) :: mask
  do i=1,64
     a(i) = abs(b(i))
  enddo

end subroutine test
