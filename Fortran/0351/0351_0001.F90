program main
  real(kind=8),dimension(64) :: a,res
  complex(kind=8),dimension(64) :: b
  integer,dimension(1:64) :: mask
  intrinsic cdabs
  call init(a,b,res,mask,cdabs)
  do i=1,2
     call test(a,b,mask)
  enddo
  do i=1,64
     if(((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0D-13)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,mask,fs)
  real(kind=8),dimension(1:64) :: a,res
  complex(kind=8),dimension(1:64) :: b
  integer,dimension(1:64) :: mask
  real(kind=8),parameter :: pzero=z'0'
  real(kind=8),parameter :: mzero=z'8000000000000000'
  real(kind=8) :: fs
  external :: fs


  b(1) = cmplx( pzero,  pzero, kind=8); res(1) = fs(cmplx( pzero,  pzero, kind=8))
  b(2) = cmplx( pzero,  mzero, kind=8); res(2) = fs(cmplx( pzero,  mzero, kind=8))
  b(3) = cmplx( mzero,  pzero, kind=8); res(3) = fs(cmplx( mzero,  pzero, kind=8))
  b(4) = cmplx( mzero,  mzero, kind=8); res(4) = fs(cmplx( mzero,  mzero, kind=8))

  b(5) = cmplx(  1._8,  pzero, kind=8); res(5) = fs(cmplx(  1._8,  pzero, kind=8))
  b(6) = cmplx( pzero,   1._8, kind=8); res(6) = fs(cmplx( pzero,   1._8, kind=8))
  b(7) = cmplx( -1._8,  pzero, kind=8); res(7) = fs(cmplx( -1._8,  pzero, kind=8))
  b(8) = cmplx( pzero,  -1._8, kind=8); res(8) = fs(cmplx( pzero,  -1._8, kind=8))

  b(9) = cmplx(   1.0_8,   1.0_8, kind=8); res(9) = fs(cmplx(   1.0_8,   1.0_8, kind=8))
  b(10) = cmplx( -1.0_8,  -1.0_8, kind=8); res(10) = fs(cmplx( -1.0_8,  -1.0_8, kind=8))
  b(11) = cmplx(  1.0_8,  -1.0_8, kind=8); res(11) = fs(cmplx(  1.0_8,  -1.0_8, kind=8))
  b(12) = cmplx( -1.0_8,   1.0_8, kind=8); res(12) = fs(cmplx( -1.0_8,   1.0_8, kind=8))

  
  b(13) = cmplx(  10.1_8,   3.1_8, kind=8); res(13) = fs(cmplx(  10.1_8,   3.1_8, kind=8))
  b(14) = cmplx( -10.1_8,   3.1_8, kind=8); res(14) = fs(cmplx( -10.1_8,   3.1_8, kind=8))
  b(15) = cmplx(  10.1_8,  -3.1_8, kind=8); res(15) = fs(cmplx(  10.1_8,  -3.1_8, kind=8))
  b(16) = cmplx( -10.1_8,  -3.1_8, kind=8); res(16) = fs(cmplx( -10.1_8,  -3.1_8, kind=8))

  
  b(17) = cmplx(  1.1_8,   3.1_8, kind=8); res(17) = fs(cmplx(  1.1_8,   3.1_8, kind=8))
  b(18) = cmplx( -1.1_8,   3.1_8, kind=8); res(18) = fs(cmplx( -1.1_8,   3.1_8, kind=8))
  b(19) = cmplx(  1.1_8,  -3.1_8, kind=8); res(19) = fs(cmplx(  1.1_8,  -3.1_8, kind=8))
  b(20) = cmplx( -1.1_8,  -3.1_8, kind=8); res(20) = fs(cmplx( -1.1_8,  -3.1_8, kind=8))

  b(21) = cmplx(  1.D+308,   1.D+308, kind=8); res(21) = fs(cmplx(  1.D+308,   1.D+308, kind=8))
  b(22) = cmplx( -1.D+308,   1.D+308, kind=8); res(22) = fs(cmplx( -1.D+308,   1.D+308, kind=8))
  b(23) = cmplx(  1.D+308,  -1.D+308, kind=8); res(23) = fs(cmplx(  1.D+308,  -1.D+308, kind=8))
  b(24) = cmplx( -1.D+308,  -1.D+308, kind=8); res(24) = fs(cmplx( -1.D+308,  -1.D+308, kind=8))

  b(25) = cmplx(  2.D-308,   2.D-308, kind=8); res(25) = fs(cmplx(  2.D-308,   2.D-308, kind=8))
  b(26) = cmplx( -2.D-308,   2.D-308, kind=8); res(26) = fs(cmplx( -2.D-308,   2.D-308, kind=8))
  b(27) = cmplx(  2.D-308,  -2.D-308, kind=8); res(27) = fs(cmplx(  2.D-308,  -2.D-308, kind=8))
  b(28) = cmplx( -2.D-308,  -2.D-308, kind=8); res(28) = fs(cmplx( -2.D-308,  -2.D-308, kind=8))

  b(29) = cmplx(  1.D+308,   2.D-308, kind=8); res(29) = fs(cmplx(  1.D+308,   2.D-308, kind=8))
  b(30) = cmplx( -1.D+308,   2.D-308, kind=8); res(30) = fs(cmplx( -1.D+308,   2.D-308, kind=8))
  b(31) = cmplx(  1.D+308,  -2.D-308, kind=8); res(31) = fs(cmplx(  1.D+308,  -2.D-308, kind=8))
  b(32) = cmplx( -1.D+308,  -2.D-308, kind=8); res(32) = fs(cmplx( -1.D+308,  -2.D-308, kind=8))

  b(33) = cmplx(  2.D-308,   1.D+308, kind=8); res(33) = fs(cmplx(  2.D-308,   1.D+308, kind=8))
  b(34) = cmplx( -2.D-308,   1.D+308, kind=8); res(34) = fs(cmplx( -2.D-308,   1.D+308, kind=8))
  b(35) = cmplx(  2.D-308,  -1.D+308, kind=8); res(35) = fs(cmplx(  2.D-308,  -1.D+308, kind=8))
  b(36) = cmplx( -2.D-308,  -1.D+308, kind=8); res(36) = fs(cmplx( -2.D-308,  -1.D+308, kind=8))

  
  b(37) = cmplx(  1.5D+308,   1.5D+308, kind=8); res(37) = fs(cmplx(  1.5D+308,   1.5D+308, kind=8))
  b(38) = cmplx( -1.5D+308,   1.5D+308, kind=8); res(38) = fs(cmplx( -1.5D+308,   1.5D+308, kind=8))
  b(39) = cmplx(  1.5D+308,  -1.5D+308, kind=8); res(39) = fs(cmplx(  1.5D+308,  -1.5D+308, kind=8))
  b(40) = cmplx( -1.5D+308,  -1.5D+308, kind=8); res(40) = fs(cmplx( -1.5D+308,  -1.5D+308, kind=8))


  do i=41,64
    b(i) = cmplx( 1._8,  pzero, kind=8); res(i) = fs(cmplx( 1._8,  pzero, kind=8))
  enddo


  do i=1,64
     a(i) = 0._8
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(a,b,mask)
  real(kind=8), dimension(1:64) :: a
  complex(kind=8), dimension(1:64) :: b
  integer,dimension(1:64) :: mask
  do i=1,64
     a(i) = abs(b(i))
  enddo

end subroutine test
