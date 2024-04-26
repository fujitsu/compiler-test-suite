program pro
 complex,parameter :: x1(2,2)=RESHAPE([(1,3),(2,2),(4,4),(5,5)],[2,2])
 complex*16,parameter :: x2(2,2)=RESHAPE([(1,3),(2,2),(4,4),(5,5)],[2,2])
 complex*32,parameter :: x3(2,2)=RESHAPE([(1,3),(2,2),(4,4),(5,5)],[2,2])
 complex:: rslt1(2) = SUM(ACOS(x1),2)
 complex*16:: rslt2(2) = SUM(ACOS(x2),2)
 complex*32:: rslt3(2) = SUM(ACOS(x3),2)

    if (.not.((real(rslt1(1)))>2.0 .and.  (real(rslt1(1)))<3.0)) print *,101
    if (.not.((imag(rslt1(1)))<-4.1 .and.  (imag(rslt1(1)))>-4.4)) print *,102
    if (.not.((real(rslt1(2)))>1.4 .and.  (real(rslt1(2)))<1.8)) print *,103
    if (.not.((imag(rslt1(2)))<-4.2 .and.  (imag(rslt1(2)))>-4.8)) print *,104
    if (.not.((real(rslt2(1)))>2.0 .and.  (real(rslt2(1)))<3.0)) print *,105
    if (.not.((imag(rslt2(1)))<-4.1 .and.  (imag(rslt2(1)))>-4.4)) print *,106
    if (.not.((real(rslt2(2)))>1.4 .and.  (real(rslt2(2)))<1.8)) print *,107
    if (.not.((imag(rslt2(2)))<-4.2 .and.  (imag(rslt2(2)))>-4.8)) print *,108
    if (.not.((real(rslt3(1)))>2.0 .and.  (real(rslt3(1)))<3.0)) print *,109
    if (.not.((imag(rslt3(1)))<-4.1 .and.  (imag(rslt3(1)))>-4.4)) print *,110
    if (.not.((real(rslt3(2)))>1.4 .and.  (real(rslt3(2)))<1.8)) print *,111
    if (.not.((imag(rslt3(2)))<-4.2 .and.  (imag(rslt3(2)))>-4.8)) print *,112
 print*,"pass"
end
