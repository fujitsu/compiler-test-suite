program pro
 complex,parameter :: rslt1(2,2)=ATANH(RESHAPE([(1.1045_4,0.4980_4),(0.1925_4,0.1976_4),(0.3734_4,0.4133_4),(0.4615_4,0.5401_4)],[2,2]))
 complex*16,parameter :: rslt2(2,2)=ATANH(RESHAPE([(1.1045,0.4980),(0.1925,0.1976),(0.3734,0.4133),(0.4615,0.5401)],[2,2]))
 complex*32,parameter :: rslt3(2,2)=ATANH(RESHAPE([(1.1045_16,0.4980_16),(0.1925_16,0.1976_16),(0.3734_16,0.4133_16),(0.4615_16,0.5401_16)],[2,2]))



    if (.not.((real(rslt1(1,1)))>0.71 .and.  (real(rslt1(1,1)))<0.73)) print *,101
    if (.not.((imag(rslt1(1,1)))>0.98 .and.  (imag(rslt1(1,1)))<1.10)) print *,102
    if (.not.((real(rslt1(1,2)))>0.31 .and.  (real(rslt1(1,2)))<0.33)) print *,103
    if (.not.((imag(rslt1(1,2)))>0.42 .and.  (imag(rslt1(1,2)))<0.44)) print *,104
    if (.not.((real(rslt1(2,1)))>0.17 .and.  (real(rslt1(2,1)))<0.19)) print *,105
    if (.not.((imag(rslt1(2,1)))>0.19 .and.  (imag(rslt1(2,1)))<0.21)) print *,106
    if (.not.((real(rslt1(2,2)))>0.34 .and.  (real(rslt1(2,2)))<0.36)) print *,107
    if (.not.((imag(rslt1(2,2)))>0.56 .and.  (imag(rslt1(2,2)))<0.58)) print *,108

    if (.not.((real(rslt2(1,1)))>0.71 .and.  (real(rslt2(1,1)))<0.73)) print *,201
    if (.not.((imag(rslt2(1,1)))>0.98 .and.  (imag(rslt2(1,1)))<1.10)) print *,202
    if (.not.((real(rslt2(1,2)))>0.31 .and.  (real(rslt2(1,2)))<0.33)) print *,203
    if (.not.((imag(rslt2(1,2)))>0.42 .and.  (imag(rslt2(1,2)))<0.44)) print *,204
    if (.not.((real(rslt2(2,1)))>0.17 .and.  (real(rslt2(2,1)))<0.19)) print *,205
    if (.not.((imag(rslt2(2,1)))>0.19 .and.  (imag(rslt2(2,1)))<0.21)) print *,206
    if (.not.((real(rslt2(2,2)))>0.34 .and.  (real(rslt2(2,2)))<0.36)) print *,207
    if (.not.((imag(rslt2(2,2)))>0.56 .and.  (imag(rslt2(2,2)))<0.58)) print *,208

    if (.not.((real(rslt3(1,1)))>0.71 .and.  (real(rslt3(1,1)))<0.73)) print *,301
    if (.not.((imag(rslt3(1,1)))>0.98 .and.  (imag(rslt3(1,1)))<1.10)) print *,302
    if (.not.((real(rslt3(1,2)))>0.31 .and.  (real(rslt3(1,2)))<0.33)) print *,303
    if (.not.((imag(rslt3(1,2)))>0.42 .and.  (imag(rslt3(1,2)))<0.44)) print *,304
    if (.not.((real(rslt3(2,1)))>0.17 .and.  (real(rslt3(2,1)))<0.19)) print *,305
    if (.not.((imag(rslt3(2,1)))>0.19 .and.  (imag(rslt3(2,1)))<0.21)) print *,306
    if (.not.((real(rslt3(2,2)))>0.34 .and.  (real(rslt3(2,2)))<0.36)) print *,307
    if (.not.((imag(rslt3(2,2)))>0.56 .and.  (imag(rslt3(2,2)))<0.58)) print *,308
    print*,"pass"
end
