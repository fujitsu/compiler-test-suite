       REAL X1,PCT
       X1 = 0.
       DO 50 I=1,40
       X1 = X1 + 1.
       PCT = X1 * 100. / 40.
       WRITE(9,91) X1,PCT,PCT,pct
 50    CONTINUE
 91    FORMAT(F7.0,F7.1,F7.0,z16)
       call chk
       END
       subroutine chk
       rewind 9
       do i=1,40
       read(9,*) a,b,c
        if (abs(i-a)>0.0001)print *,'error-1',i
        if (abs(b-c)>0.1)then
          if (c-b>0.4)then
          else
            write(99,*)'error-2',i,a,b,c
          endif
       endif
       end do
       print *,'pass'
       end
