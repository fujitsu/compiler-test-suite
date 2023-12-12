module m1
 real,parameter :: x1(2,2)=RESHAPE([1.0, 2.3, 1.2, 3.7],[2,2])
 real*8,parameter :: x2(2,2)=RESHAPE([1.0, 2.3, 1.2, 3.7],[2,2])
 real*16,parameter :: x3(2,2)=RESHAPE([1.0, 2.3, 1.2, 3.7],[2,2])
end module m1
program pro
  use m1
  call sub
  print*,"pass"
  contains
  subroutine sub
    real:: rslt1(2) = SUM(ACOSH(x1(1:2,1:2)),2)
    real*8:: rslt2(2) = SUM(ACOSH(x2(1:2,1:2)),2)
    real*16:: rslt3(2) = SUM(ACOSH(x3(1:2,1:2)),2)

    if (.not.((real(rslt1(1)))>0.61 .and.  (real(rslt1(1)))<0.63)) print *,101
    if (.not.((real(rslt1(2)))>3.44 .and.  (real(rslt1(2)))<3.46)) print *,102
    if (.not.((real(rslt2(1)))>0.61 .and.  (real(rslt2(1)))<0.63)) print *,103
    if (.not.((real(rslt2(2)))>3.44 .and.  (real(rslt2(2)))<3.46)) print *,104
    if (.not.((real(rslt3(1)))>0.61 .and.  (real(rslt3(1)))<0.63)) print *,105
    if (.not.((real(rslt3(2)))>3.44 .and.  (real(rslt3(2)))<3.46)) print *,106
    end subroutine sub
end
