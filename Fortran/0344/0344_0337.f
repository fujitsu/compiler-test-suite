      PROGRAM MAIN
      INTEGER*4  IA(-9:20),ID
      CHARACTER*10 SA
      EQUIVALENCE (IA,ID)
      COMMON IA
      DATA SA/'1234'/,IMX/0/
      DO 1 I=-9,20
    1    IA(I) = I
C
      DO 10 I1=1,10
        READ(SA(1:2),'(I2)') IA(1)
        IA(I1)=SIGN(IA(I1),IA(I1+1))
        IMX =MAX0(IA(I1),IMX)
   10 CONTINUE
      WRITE(6,*) 'IMX => ',IMX
      STOP
      END
