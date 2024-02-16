!Module, subroutine used
! SUM intrinsic function used
! Array Section used
module m1
 real,parameter :: x1(2,2)=RESHAPE([3.3,4.0,5.8,6.2],[2,2])
end module m1
program pro
  use m1
  call sub
  print*,"pass"
  contains
  subroutine sub
    real:: rslt(2) = SUM(LOG_GAMMA(x1(1:2,1:2)),2)
   if (.not.(rslt(1)>5.43 .and.  rslt(1)<5.45)) print *,101,rslt
   if (.not.(rslt(2)>6.91 .and.  rslt(2)<6.94)) print *,102,rslt

    end subroutine sub
end
