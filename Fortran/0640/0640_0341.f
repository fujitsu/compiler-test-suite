      DIMENSION A(10),B(10),C(10),L(10)
      LOGICAL*4 LB(10)
      DATA A/10*0/
      DATA L/1,2,3,4,5,6,7,8,9,10/
      DATA B/1,2,3,4,5,6,7,8,9,10/
      DATA C/-2,-2,0,-5,-5,-5,-7,0,-10,-11/
      DATA LB/5*.TRUE.,5*.FALSE./
      DO 10 I=1,10
        IF ( B(L(I)) + C(L(I)) ) 20,30,40
  20      A(I) = I
          GO TO 10
  30      A(I) = -I
          GO TO 10
  40      A(I) = I*I
  10  CONTINUE
      WRITE(6,100) A
 100  FORMAT(1H ,10F5.1)
      STOP
      END
