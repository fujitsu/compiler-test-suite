module m1
 real,parameter :: x1(2,2)=RESHAPE([3.0,4.0,5.0,3.5],[2,2])
end module m1
program pro
  use m1
  call sub
  print*,"pass"
  contains
  subroutine sub
    real:: rslt(2) = SUM(BESSEL_Y1(x1(1:2,1:2)),2)
    if( .not.(rslt(1)>0.46 .and. rslt(1)<0.48))  print *,101
    if( .not.(rslt(2)>0.78 .and. rslt(2)<0.81))  print *,102
    end subroutine sub
end
