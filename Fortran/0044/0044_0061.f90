program pro
 complex,parameter :: x1(2,2)=RESHAPE([(1,0.3),(2.2,0.7),(1.2,0.53),(1,2)],[2,2])
 complex:: rslt1(2) = SUM(ATANH(x1),2)
 complex*16:: rslt2(2) = SUM(ATANH(x1),2)
 complex*32:: rslt3(2) = SUM(ATANH(x1),2)

    if (.not.((real(rslt1(1)))>1.63 .and.  (real(rslt1(1)))<1.65)) print *,101
    if (.not.((imag(rslt1(1)))>1.93 .and.  (imag(rslt1(1)))<1.95)) print *,102
    if (.not.((real(rslt1(2)))>0.59 .and.  (real(rslt1(2)))<0.61)) print *,103
    if (.not.((imag(rslt1(2)))>2.58 .and.  (imag(rslt1(2)))<2.60)) print *,104

    if (.not.((real(rslt2(1)))>1.63 .and.  (real(rslt2(1)))<1.65)) print *,201
    if (.not.((imag(rslt2(1)))>1.93 .and.  (imag(rslt2(1)))<1.95)) print *,202
    if (.not.((real(rslt2(2)))>0.59 .and.  (real(rslt2(2)))<0.61)) print *,203
    if (.not.((imag(rslt2(2)))>2.58 .and.  (imag(rslt2(2)))<2.60)) print *,204

    if (.not.((real(rslt3(1)))>1.63 .and.  (real(rslt3(1)))<1.65)) print *,301
    if (.not.((imag(rslt3(1)))>1.93 .and.  (imag(rslt3(1)))<1.95)) print *,302
    if (.not.((real(rslt3(2)))>0.59 .and.  (real(rslt3(2)))<0.61)) print *,303
    if (.not.((imag(rslt3(2)))>2.58 .and.  (imag(rslt3(2)))<2.60)) print *,304
    print*,"pass"
end
