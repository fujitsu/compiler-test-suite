      INTEGER*4  I400X(10),I400Y(10)
      REAL*4     R400X(10),R400Y(10)
      REAL*8     R800X(10),R800Y(10)
      COMPLEX*8  C800X(10),C800Y(10)
      COMPLEX*16 C1600X(10),C1600Y(10)
      LOGICAL*4  L400X(10),L400Y(10)
      DATA       I400X/10*0/
      DATA       R400X/10*0/
      DATA       R800X/10*0/
      DATA       C800X/10*(0,0)/
      DATA       C1600X/10*(0,0)/
      DATA       L400X/10*.FALSE./
      DATA       I400Y/1,3,5,7,9,7,5,3,1,3/
      DATA       R400Y/2,4,6,8,2,4,6,8,2,4/
      DATA       R800Y/3,4,5,6,7,8,1,2,3,4/
      DATA       C800Y/5*(2.,3.),5*(3.,4.)/
      DATA       C1600Y/5*(2.,3.),5*(3.,4.)/
      DATA       L400Y/10*.TRUE./
C
      DO 10 I=1,10
        I400X(1)=I400Y(I)
        R400X(2)=R400Y(I)
        R800X(5)=R800Y(I)
        C800X(9)=C800Y(I)
        C1600X(10)=C1600Y(I)
        L400X(1)=L400Y(I)
   10 CONTINUE
      WRITE(6,111) I400X
      WRITE(6,222) R400X
      WRITE(6,333) R800X
      WRITE(6,444) C800X
      WRITE(6,555) C1600X
      WRITE(6,666) L400X
  111 FORMAT(2X,10I2)
  222 FORMAT(/,10F7.3)
  333 FORMAT(/,(5F12.6))
  444 FORMAT(/,2(2X,'(',F8.4,',',F8.4,')'))
  555 FORMAT(/,2(2X,'(',F12.8,',',F12.8,')'))
  666 FORMAT(/,10L2)
      STOP
      END
