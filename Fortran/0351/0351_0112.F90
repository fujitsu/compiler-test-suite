program main

  use, intrinsic :: ieee_arithmetic

  real(kind=8),dimension(1:64) :: a,b,res
  call init(b,res)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
    select case(i)
    case (1,25:)
       if (((a(i) .ne.  res(i)) .and. .not.(ieee_is_nan(a(i)) .and. ieee_is_nan( res(i))))) then
          print *, "NG"
       endif
    case default
       if (((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0D-15)) then
          print *, "NG"
       endif
    end select
  enddo
  print *, "OK"
end program main

subroutine init(b, res)
  real(kind=8),dimension(1:64) :: b, res
  real(kind=8),parameter :: pzero=z'0'
  real(kind=8),parameter :: mzero=z'8000000000000000'



  real(kind=8),parameter :: minf=z'fff0000000000000'
  real(kind=8),parameter :: pnan=z'7ff8000000000000'





  b(1) =   1.0_8; res(1) =  pzero
  b(2) =   1.1_8; res(2) =  	     	     9.53101798043249349D-02
  b(3) =   1.8_8; res(3) =  	     	     5.87786664902119060D-01
  b(4) =   0.1_8; res(4) =  	     	    -2.30258509299404546D+00
  b(5) =   0.4_8; res(5) =  	     	    -9.16290731874154996D-01
  b(6) =   1.00000000000001_8; res(6) =  	     9.99200722162635838D-15
  b(7) =   0.99999999999999_8; res(7) =  	    -9.99200722162645935D-15
  b(8) =   1.99999999999999_8; res(8) =  	     6.93147180559940290D-01
  b(9) =   2.0_8; res(9) =               	     6.93147180559945286D-01
  b(10) =  2.00000000000001_8; res(10) =  	     6.93147180559950393D-01
  b(11) =  0.49999999999999_8; res(11) =  	    -6.93147180559965270D-01
  b(12) =  0.5_8; res(12) =               	    -6.93147180559945286D-01
  b(13) =  0.50000000000001_8; res(13) =  	    -6.93147180559925302D-01
  b(14) =  5.0_8; res(14) =     	     	     1.60943791243410028D+00
  b(15) =  100.1_8; res(15) =   	     	     4.60616968632117452D+00
  b(16) =  0.1_8; res(16) =     	     	    -2.30258509299404546D+00
  b(17) =  0.0001_8; res(17) =  	     	    -9.21034037197618183D+00
  b(18) =  1.49999999999999_8; res(18) =  	     4.05465108108157724D-01
  b(19) =  1.5_8; res(19) =               	     4.05465108108164385D-01
  b(20) =  1.50000000000001_8; res(20) =  	     4.05465108108171046D-01
  b(21) =  0.74999999999999_8; res(21) =  	    -2.87682072451794224D-01
  b(22) =  0.75_8; res(22) =              	    -2.87682072451780901D-01
  b(23) =  0.75000000000001_8; res(23) =  	    -2.87682072451767579D-01
  b(24) =  2.2250738585072015D-308; res(24) =  -7.08396418532264079D+02





  b(25) =  0.0_8; res(25) =  minf
  b(26) =  -1.0_8; res(26) =  pnan

  b(27) =  0.0_8; res(27) =  minf
  b(28) =  mzero; res(28) =  minf



  b(29) =  0.0_8; res(29) =  minf







  b(30) =  minf; res(30) =  pnan
  b(31) =  0.0_8; res(31) =  minf
  b(32) =  0.0_8; res(32) =  minf



  do i=33,64
     b(i) = 1._8
     res(i) = 0._8
  enddo
end subroutine init


subroutine test(a,b)
  real(kind=8), dimension(1:64) :: a,b

  do i=1,64
     a(i) = dlog(b(i))
  enddo
end subroutine test
