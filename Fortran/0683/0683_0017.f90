!
!
  real*8 function atan_f()
    real*8 d, d_rad, sum;
    integer i;
    sum = 1.0;
    do i=1, 5
       d = tan((3.14_8*i)/3.0_8);
       d_rad = -atan(d);
       sum = sum * d_rad;
    end do
    atan_f = sum*1000;
  end function atan_f

  real*8 result, atan_f;
  result = atan_f();
  if (result .lt. 2.0) then
     print *,"PASS"
  else
     print *,"NG", result
  endif
  end
