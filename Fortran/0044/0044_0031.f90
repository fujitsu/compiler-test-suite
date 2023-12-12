program pro
 complex,parameter :: rslt1(2,2)=ASINH(RESHAPE([(1.1045,0.4980),(0.1925,0.1976),(0.3734,0.4133),(0.4615,0.5401)],[2,2]))
 complex*16,parameter :: rslt2(2,2)=ASINH(RESHAPE([(1.1045,0.4980),(0.1925,0.1976),(0.3734,0.4133),(0.4615,0.5401)],[2,2]))
 complex*32,parameter :: rslt3(2,2)=ASINH(RESHAPE([(1.1045,0.4980),(0.1925,0.1976),(0.3734,0.4133),(0.4615,0.5401)],[2,2]))



    if (.not.((real(rslt1(1,1)))>0.98 .and.  (real(rslt1(1,1)))<1.20)) print *,101
    if (.not.((imag(rslt1(1,1)))>0.31 .and.  (imag(rslt1(1,1)))<0.33)) print *,102
    if (.not.((real(rslt1(1,2)))>0.38 .and.  (real(rslt1(1,2)))<0.40)) print *,103
    if (.not.((imag(rslt1(1,2)))>0.38 .and.  (imag(rslt1(1,2)))<0.40)) print *,104
    if (.not.((real(rslt1(2,1)))>0.18 .and.  (real(rslt1(2,1)))<0.20)) print *,105
    if (.not.((imag(rslt1(2,1)))>0.19 .and.  (imag(rslt1(2,1)))<0.20)) print *,106
    if (.not.((real(rslt1(2,2)))>0.49 .and.  (real(rslt1(2,2)))<0.51)) print *,107
    if (.not.((imag(rslt1(2,2)))>0.48 .and.  (imag(rslt1(2,2)))<0.51)) print *,108

    if (.not.((real(rslt2(1,1)))>0.98 .and.  (real(rslt2(1,1)))<1.20)) print *,201
    if (.not.((imag(rslt2(1,1)))>0.31 .and.  (imag(rslt2(1,1)))<0.33)) print *,202
    if (.not.((real(rslt2(1,2)))>0.38 .and.  (real(rslt2(1,2)))<0.40)) print *,203
    if (.not.((imag(rslt2(1,2)))>0.38 .and.  (imag(rslt2(1,2)))<0.40)) print *,204
    if (.not.((real(rslt2(2,1)))>0.18 .and.  (real(rslt2(2,1)))<0.20)) print *,205
    if (.not.((imag(rslt2(2,1)))>0.19 .and.  (imag(rslt2(2,1)))<0.20)) print *,206
    if (.not.((real(rslt2(2,2)))>0.49 .and.  (real(rslt2(2,2)))<0.51)) print *,207
    if (.not.((imag(rslt2(2,2)))>0.48 .and.  (imag(rslt2(2,2)))<0.51)) print *,208

    if (.not.((real(rslt3(1,1)))>0.98 .and.  (real(rslt3(1,1)))<1.20)) print *,301
    if (.not.((imag(rslt3(1,1)))>0.31 .and.  (imag(rslt3(1,1)))<0.33)) print *,302
    if (.not.((real(rslt3(1,2)))>0.38 .and.  (real(rslt3(1,2)))<0.40)) print *,303
    if (.not.((imag(rslt3(1,2)))>0.38 .and.  (imag(rslt3(1,2)))<0.40)) print *,304
    if (.not.((real(rslt3(2,1)))>0.18 .and.  (real(rslt3(2,1)))<0.20)) print *,305
    if (.not.((imag(rslt3(2,1)))>0.19 .and.  (imag(rslt3(2,1)))<0.20)) print *,306
    if (.not.((real(rslt3(2,2)))>0.49 .and.  (real(rslt3(2,2)))<0.51)) print *,307
    if (.not.((imag(rslt3(2,2)))>0.48 .and.  (imag(rslt3(2,2)))<0.51)) print *,308
    print*,"pass"
end
