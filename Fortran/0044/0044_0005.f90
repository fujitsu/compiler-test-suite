program pro
 complex,parameter :: rslt1(2,2)=ACOSH(RESHAPE([(1.1045_4,0.4980_4),(0.1925_4,0.1976_4),(0.3734_4,0.4133_4),(0.4615_4,0.5401_4)],[2,2]))
 complex*16,parameter :: rslt2(2,2)=ACOSH(RESHAPE([(1.1045,0.4980),(0.1925,0.1976),(0.3734,0.4133),(0.4615,0.5401)],[2,2]))
 complex*32,parameter :: rslt3(2,2)=ACOSH(RESHAPE([(1.1045_16,0.4980_16),(0.1925_16,0.1976_16),(0.3734_16,0.4133_16),(0.4615_16,0.5401_16)],[2,2]))

    if (.not.((real(rslt1(1,1)))>0.78 .and.  (real(rslt1(1,1)))<0.80)) print *,101
    if (.not.((imag(rslt1(1,1)))>0.58 .and.  (imag(rslt1(1,1)))<0.60)) print *,102
    if (.not.((real(rslt1(1,2)))>0.41 .and.  (real(rslt1(1,2)))<0.43)) print *,103
    if (.not.((imag(rslt1(1,2)))>1.21 .and.  (imag(rslt1(1,2)))<1.23)) print *,104
    if (.not.((real(rslt1(2,1)))>0.18 .and.  (real(rslt1(2,1)))<0.20)) print *,105
    if (.not.((imag(rslt1(2,1)))>1.37 .and.  (imag(rslt1(2,1)))<1.39)) print *,106
    if (.not.((real(rslt1(2,2)))>0.54 .and.  (real(rslt1(2,2)))<0.56)) print *,107
    if (.not.((imag(rslt1(2,2)))>1.15 .and.  (imag(rslt1(2,2)))<1.17)) print *,108

    if (.not.((real(rslt2(1,1)))>0.78 .and.  (real(rslt2(1,1)))<0.80)) print *,201
    if (.not.((imag(rslt2(1,1)))>0.58 .and.  (imag(rslt2(1,1)))<0.60)) print *,202
    if (.not.((real(rslt2(1,2)))>0.41 .and.  (real(rslt2(1,2)))<0.43)) print *,203
    if (.not.((imag(rslt2(1,2)))>1.21 .and.  (imag(rslt2(1,2)))<1.23)) print *,204
    if (.not.((real(rslt2(2,1)))>0.18 .and.  (real(rslt2(2,1)))<0.20)) print *,205
    if (.not.((imag(rslt2(2,1)))>1.37 .and.  (imag(rslt2(2,1)))<1.39)) print *,206
    if (.not.((real(rslt2(2,2)))>0.54 .and.  (real(rslt2(2,2)))<0.56)) print *,207
    if (.not.((imag(rslt2(2,2)))>1.15 .and.  (imag(rslt2(2,2)))<1.17)) print *,208

    if (.not.((real(rslt3(1,1)))>0.78 .and.  (real(rslt3(1,1)))<0.80)) print *,301
    if (.not.((imag(rslt3(1,1)))>0.58 .and.  (imag(rslt3(1,1)))<0.60)) print *,302
    if (.not.((real(rslt3(1,2)))>0.41 .and.  (real(rslt3(1,2)))<0.43)) print *,303
    if (.not.((imag(rslt3(1,2)))>1.21 .and.  (imag(rslt3(1,2)))<1.23)) print *,304
    if (.not.((real(rslt3(2,1)))>0.18 .and.  (real(rslt3(2,1)))<0.20)) print *,305
    if (.not.((imag(rslt3(2,1)))>1.37 .and.  (imag(rslt3(2,1)))<1.39)) print *,306
    if (.not.((real(rslt3(2,2)))>0.54 .and.  (real(rslt3(2,2)))<0.56)) print *,307
    if (.not.((imag(rslt3(2,2)))>1.15 .and.  (imag(rslt3(2,2)))<1.17)) print *,308
    print*,"pass"
end
