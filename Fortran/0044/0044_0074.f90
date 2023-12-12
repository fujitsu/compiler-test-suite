module m1
 real,parameter :: x1(2,2)=RESHAPE([0.6, 0.3, 0.2, 0.7],[2,2])
 real*8,parameter :: x2(2,2)=RESHAPE([0.6, 0.3, 0.2, 0.7],[2,2])
 real*16,parameter :: x3(2,2)=RESHAPE([0.6, 0.3, 0.2, 0.7],[2,2])
end module m1
program pro
  use m1
  call sub
  print*,"pass"
  contains
  subroutine sub
    real:: rslt1(2) = SUM(ATANH(x1(1:2,1:2)),2)
    real*8:: rslt2(2) = SUM(ATANH(x2(1:2,1:2)),2)
    real*16:: rslt3(2) = SUM(ATANH(x3(1:2,1:2)),2)

    if (.not.((real(rslt1(1)))>0.88 .and.  (real(rslt1(1)))<0.90)) print *,101
    if (.not.((real(rslt1(2)))>1.16 .and.  (real(rslt1(2)))<1.18)) print *,102
    if (.not.((real(rslt2(1)))>0.88 .and.  (real(rslt2(1)))<0.90)) print *,103
    if (.not.((real(rslt2(2)))>1.16 .and.  (real(rslt2(2)))<1.18)) print *,104
    if (.not.((real(rslt3(1)))>0.88 .and.  (real(rslt3(1)))<0.90)) print *,105
    if (.not.((real(rslt3(2)))>1.16 .and.  (real(rslt3(2)))<1.18)) print *,106
    end subroutine sub
end
