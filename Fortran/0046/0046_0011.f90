module m1
 real,parameter :: x1(2,2)=RESHAPE([1.4,2.0,1.8,2.2],[2,2])
end module m1
program pro
  use m1
  call sub
  print*,"pass"
  contains
  subroutine sub
    real:: rslt(2) = SUM(BESSEL_J0(x1(1:2,1:2)),2)
    if( .not.(rslt(1)>0.88 .and. rslt(1)<0.91))  print *,101
    if( .not.(rslt(2)>0.31 .and. rslt(2)<0.34))  print *,102
    end subroutine sub
end
