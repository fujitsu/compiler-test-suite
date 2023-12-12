module m1
 real,parameter :: x1(2,2)=RESHAPE([1.4,2.0,1.8,2.2],[2,2])
end module m1
program pro
  use m1
  call sub
  print*,"pass"
  contains
  subroutine sub
    real:: rslt(2) = SUM(BESSEL_Y0(x1(1:2,1:2)),2)
    if( .not.(rslt(1)>0.80 .and. rslt(1)<0.84))  print *,101
    if( .not.(rslt(2)>1.02 .and. rslt(2)<1.04))  print *,102
    end subroutine sub
end
