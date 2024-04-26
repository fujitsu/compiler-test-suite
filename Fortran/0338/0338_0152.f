      REAL*4 A1(10)/10*10/,B1(10)
      REAL*8 A2(10)/10*5/,B2(10)
      DO 1 I=1,10
       B1(I) = COSH(A1(I))
    1  B2(I) = COSH(A2(I))
      DO 2 I=1,10
      IF (ABS(B1(I)-11013.2324)>9.8E-4) WRITE(6,*) 'NG B1',B1(I)
      IF (ABS(B2(I)-74.20994852478785)>2.9E-6) WRITE(6,*) 'NG B2',B2(I)
    2 CONTINUE
      WRITE(6,*) '*** OK ***'
      STOP
      END
