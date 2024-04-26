program main

  use, intrinsic :: ieee_arithmetic

  real(kind=4),dimension(1:64) :: a,b,res
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
       if (((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0e-7_4)) then
         print *, "NG"
       endif
    end select
  enddo
  print *, "OK"
end program main

subroutine init(b, res)
  real(kind=4),dimension(1:64) :: b, res
  real(kind=4),parameter :: pzero = z'00000000'
  real(kind=4),parameter :: minf  = z'ff800000'

  real(kind=4),parameter :: pinf  = z'7f800000'
  real(kind=4),parameter :: pnan  = z'7fc00000'
  real(kind=4),parameter :: mnan  = z'ffc00000'





  b(1) =       1.0_4; res(1) =                pzero;
  b(2) =       1.1_4; res(2) =                9.53102037e-02_4;
  b(3) =       1.8_4; res(3) =                5.87786615e-01_4;
  b(4) =       0.1_4; res(4) =               -2.30258512e+00_4;
  b(5) =       0.4_4; res(5) =               -9.16290700e-01_4;
  b(6) =       1.00000000000001_4; res(6) =   0.00000000e+00_4;
  b(7) =       0.99999999999999_4; res(7) =   0.00000000e+00_4;
  b(8) =       1.99999999999999_4; res(8) =   6.93147182e-01_4;
  b(9) =       2.0_4; res(9) =                6.93147182e-01_4;             
  b(10) =      2.00000000000001_4; res(10) =   6.93147182e-01_4;
  b(11) =      0.49999999999999_4; res(11) =  -6.93147182e-01_4;
  b(12) =      0.5_4; res(12) =               -6.93147182e-01_4;             
  b(13) =      0.50000000000001_4; res(13) =  -6.93147182e-01_4;
  b(14) =      5.0_4; res(14) =                1.60943794e+00_4;             
  b(15) =      100.1_4; res(15) =              4.60616970e+00_4;           
  b(16) =      0.1_4; res(16) =               -2.30258512e+00_4;             
  b(17) =      0.0001_4; res(17) =            -9.21034050e+00_4;          
  b(18) =      1.49999999999999_4; res(18) =   4.05465096e-01_4;
  b(19) =      1.5_4; res(19) =                4.05465096e-01_4;             
  b(20) =      1.50000000000001_4; res(20) =   4.05465096e-01_4;
  b(21) =      0.74999999999999_4; res(21) =  -2.87682086e-01_4;
  b(22) =      0.75_4; res(22) =              -2.87682086e-01_4;            
  b(23) =      0.75000000000001_4; res(23) =  -2.87682086e-01_4;
  b(24) =      3.40282347e+38_4; res(24) =     8.87228394e+01_4;

  b(26) =      0.0_4; res(26) =                minf;







  b(25) =      -1.0_4; res(25) =               mnan;
  b(27) =      pnan; res(27) =                 pnan;
  b(28) =      pinf; res(28) =                 pinf;
  b(29) =      mnan; res(29) =                 mnan;
  b(30) =      minf; res(30) =                 mnan;



  do i=31,64
     b(i) = 1._4
     res(i) = 0._4
  enddo
end subroutine init


subroutine test(a,b)
  real(kind=4), dimension(1:64) :: a,b

  do i=1,64
     a(i) = log(b(i))
  enddo
end subroutine test
