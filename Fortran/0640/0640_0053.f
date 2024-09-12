      REAL*8  DA11(10,10)/100*0/,DS1
      INTEGER*2 HA11(2:9)
      REAL*4    EA11(10)/10*0/,EA12(-1:12)/14*9/,EA13(0:11)/12*10/
      REAL*8    DA21(10,10)/100*0/
      INTEGER*2 HA21(2:9)
      REAL*4    EA21(10)/10*0/,EA22(-1:12)/14*9/,EA23(0:11)/12*10/
      INTEGER   N/9/
      DO 10 I=2,N
       HA11(I)=N
       DS1 = EA13(I-1)
       IF(I.LT.8) THEN
         DA11(I,I+1)=I
         EA11(I)=I*2
       ELSE
         DA11(I,I-1)=I
       ENDIF
       EA12(N-I)=EA13(N-I+1)*2
       IF(I.NE.N) THEN
        EA12(N-I+1)=I
       ENDIF
       EA11(I+1)=DS1
  10  CONTINUE
      WRITE(6,*) HA11,DA11,EA11,EA12

      I=2
      DO 20 J=2,N
       HA21(J)=N
       DS1 = EA23(I-1)
       IF(I.LT.8) THEN
         DA21(I,I+1)=I
         EA21(J)=I*2
       ELSE
         DA21(I,I-1)=I
       ENDIF
       EA22(N-I)=EA23(N-I+1)*2
       IF(I.NE.N) THEN
        EA22(N-I+1)=I
       ENDIF
       DA21(I+1,I)=DS1
       I=I+1
  20  CONTINUE
      WRITE(6,*) HA21,DA21,EA21,EA22
      STOP
      END
