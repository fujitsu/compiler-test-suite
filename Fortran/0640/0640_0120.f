      PROGRAM MAIN
      INTEGER   IS10,K
      REAL*4    EV10(10),EV11(10)
      DATA      EV10/1,0,7*1.5,-1.5/,EV11/10*100/,K/1/

      REAL*8    DV10(10)
      INTEGER   IS20
      DATA      DV10/1,2,3,4,5,6,7,8,9,10/,IS20/16/

      REAL*8    DS30
      REAL*4    EV30(100),EV31(100)
      INTEGER   IV30(100),N
      DATA      DS30/3.5/EV30/19*1.5,1.75,30*1.5,1.75,49*2/
      DATA      IV30/100*2/,N/100/,EV31/100*0/

      DO 10 I=1,10
        IS10 = EV10(I)
        IF (EV10(I).LT.0)  GOTO  19
        EV11(K)=K+IS10
 10   K=K+1
 19   CONTINUE
      WRITE(6,*)  K,EV10,EV11

      DO 20 I=1,10
        IF(IS20) 21,29,21
  21      DV10(I)=DV10(I)/IS20
  20  CONTINUE
  29  CONTINUE

      WRITE(6,*)  I,DV10

      DO 30 I=1,N
       IV30(I)=N-I*2
       IF (IV30(I)*EV30(I)-DS30)  32,37,30
 32     EV31(I)=IV30(I)/DS30
 30   CONTINUE
      GOTO  39
 37   CONTINUE
      IV30(I)=IV30(I)*2
      GOTO  39
 39   CONTINUE
      WRITE(6,*) I,IV30,EV30,EV31
      STOP
      END
