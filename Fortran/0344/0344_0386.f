      INTEGER*4  I400X(10),I400Y(10),I400Z(10)/10*0/
      REAL*4     R400X(10),R400Y(10)
      REAL*8     R800X(10),R800Y(10),R800Z(10)
      COMPLEX*8  C800X(10),C800Y(10),C800Z(10)
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
      DATA       R800Z/5,5,5,6,6,6,7,7,7,8/
      DATA       C800Y/5*(2.,3.),5*(3.,4.)/
      DATA       C800Z/5*(2.,3.),4*(1.,0.),(0.,1.)/
      DATA       C1600Y/5*(2.,3.),5*(3.,4.)/
      DATA       L400Y/10*.TRUE./
C
      DO 10 I=1,10
        I400X(1)=I400Y(I)
        I400Z(I)=I400X(1)
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,111) I400X
C
      DO 20 I=1,10
        R400X(I)=R400Y(2)
        R400Y(2)=R400X(I)
   20 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,222) R400Y
C
      DO 30 I=1,10
        R800X(2)=R800Y(I)
        R800Z(I)=R800X(2)
        R800X(2)=R800Z(I)
   30 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,333) R800X
C
      DO 40 I=1,10
        C800X(I)=C800Z(3)
        C800Z(3)=C800X(I)
        C800Y(I)=C800Z(3)
   40 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 4 **'
      WRITE(6,444) C800Z
C
      N=9
      DO 50 I=1,N
        C1600X(I)=C1600Y(I)
        C1600Y(1)=C1600X(I)
   50 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 5 **'
      WRITE(6,555) C1600Y
C
      DO 60 I=1,N
        L400X(I)=L400Y(N)
        L400Y(3)=L400X(I)
   60 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 6 **'
      WRITE(6,666) L400Y
C
      DO 70 I=1,N
        L400X(N)=L400Y(I)
        L400Y(3)=L400X(4)
   70 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 7 **'
      WRITE(6,666) L400X
      WRITE(6,666) L400Y
C
  111 FORMAT(2X,10I2)
  222 FORMAT(10F7.3)
  333 FORMAT((5F12.6))
  444 FORMAT(2(2X,'(',F8.4,',',F8.4,')'))
  555 FORMAT(2(2X,'(',F12.8,',',F12.8,')'))
  666 FORMAT(10L2)
      STOP
      END
