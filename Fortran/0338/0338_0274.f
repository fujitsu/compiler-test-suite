      INTEGER*4   A(100),AMAXF,AMAXL,BMAXL,CMAXL
      REAL*4      B(100),BMAXF
      REAL*8      C(100),CMAXF
C
      DATA AMAXF/0/,AMAXL/0/
      DATA A/2,56,8,4,2,2,6,7,4,2,90*0/
      DATA BMAXF/0/,BMAXL/0/
      DATA B/1,5,3,87,44,2,14,2,0,10,90*0/
      DATA CMAXF/0/,CMAXL/0/
      DATA C/3,5,2,7,3,6,8,0,3,2,90*0/
C
      DO 100 I=1,100
       IF(A(I).GE.AMAXF) THEN
        AMAXF=A(I)
        AMAXL=I
       ENDIF
       IF(B(I).GE.BMAXF) THEN
        BMAXF=B(I)
        BMAXL=I
       ENDIF
       IF(C(I).GE.CMAXF) THEN
        CMAXF=C(I)
        CMAXL=I
       ENDIF
  100 CONTINUE
C
      WRITE(6,*) A,AMAXF,AMAXL
      WRITE(6,*) B,BMAXF,BMAXL
      WRITE(6,*) C,CMAXF,CMAXL
      STOP
      END
