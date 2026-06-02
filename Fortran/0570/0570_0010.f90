module m1
 real,parameter :: x1(2,2)=RESHAPE([10.3,20.0,10.8,20.2],[2,2])
end module m1
program pro
  use m1
  call sub
  print*,"pass"
  contains
  subroutine sub
    real:: rslt(2) = SUM(ERFC_SCALED(x1(1:2,1:2)),2)
   if (.not.(rslt(1)>0.09 .and.  rslt(1)<0.11)) print *,101,rslt
   if (.not.(rslt(2)>0.054 .and.  rslt(2)<0.057)) print *,102

    end subroutine sub
end
