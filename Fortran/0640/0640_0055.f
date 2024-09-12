      PROGRAM MAIN
      REAL*8  DA11(10,10)/100*10/
      INTEGER*2 HA11(2:9)
      REAL*4    EA11(10)/10*0/,EA12(-1:12)/14*9/,EA13(-1:11)/13*10/
      REAL*8    DA21(10,10)/100*0/
      INTEGER*2 HA21(2:9)
      REAL*4    EA21(1:10)/10*0/,EA22(-1:12)/14*9/,EA23(0:11)/12*10/
      CALL      SUB(DA11,HA11,EA11,EA12,EA13,
     &              DA21,HA21,EA21,EA22,EA23,10,11,12,00,1,-1)
      STOP
      END
      SUBROUTINE SUB(DA11,HA11,EA11,EA12,EA13,
     &              DA21,HA21,EA21,EA22,EA23,K10,K11,K12,K00,K01,KM1)
      REAL*8  DA11(10,K01:K10,1)
      INTEGER*2 HA11(2:9,1)
      REAL*4    EA11(K01:K10,1),EA12(KM1:12,1),EA13(KM1:11,1)
      REAL*8    DA21(10,10,1)
      INTEGER*2 HA21(2:9,1)
      REAL*4    EA21(1:10,1),EA22(-1:K12,1),EA23(0:11,1)
      INTEGER   N/9/
      DO 10 I=2,N
       HA11(I,1)=N
       ES1 = EA13(I-1,1)
       IF(I.LT.8) THEN
         DA11(I,I+1,1)=I
         EA11(I,1)=I*2
       ELSE
         DA11(I,I-1,1)=I
       ENDIF
       EA12(N-I,1)=EA13(N-I+1,1)*2
       IF(I.NE.N) THEN
        EA12(N-I+1,1)=I
       ENDIF
       EA11(I+1,1)=ES1
  10  CONTINUE
      WRITE(6,*) HA11,DA11,EA11,EA12

      DO 20 I=2,N
       HA21(I,1)=N
       ES1 = EA23(I-1,1)
       IF(I.LT.8) THEN
         DA21(I,I+1,1)=I
         EA21(I,1)=I*2
       ELSE
         DA21(I,I-1,1)=I
       ENDIF
       EA22(N-I,1)=EA23(N-I+1,1)*2
       IF(I.NE.N) THEN
        EA22(N-I+1,1)=I
       ENDIF
       DA21(I+1,I,1)=ES1
  20  CONTINUE
      WRITE(6,*) HA21,((DA21(I,J,1),I=1,10),J=1,10),EA21,EA22
      STOP
      END
