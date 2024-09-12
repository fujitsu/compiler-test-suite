      PROGRAM MAIN
      IMPLICIT  REAL*8(D),INTEGER*4(I),INTEGER*2(H)
      DIMENSION    DA10(100),DA20(100),DA30(100),DA40(100)
      DIMENSION    ID10(100),ID20(100),ID30(100),ID40(100)
      DIMENSION    RD10(50,50),RD20(50,50),RD30(50,50),RD40(50,50)

      DATA     DA10/100*2.0D0/,DA20/100*4.0D0/,DA30/100*8.0D0/
      DATA     DA40/50*1.0D0,50*10.0D0/
      DATA     ID10/100*1/,ID20/100*2/,ID30/100*3/,ID40/100*4/
      DATA     RD10/2500*2.0/,RD20/2500*4.0/,RD30/2500*6.0/
      DATA     RD40/1000*10.0,1000*12.0,500*24.0/
      DATA     IT1/1/,IT2/2/,IT3/3/,IT4/5/,IT6/10/,IT7/20/,IT8/50/

      DO 10 I=IT3,IT3*10
        DA10(I+IT2+1) = DA30(I+IT8) / DA20(I*2+IT6) * 2.0D0
        DA40(I-1+IT3) = DA20(I+IT4+IT2) ** 2 - DA30(I+IT6)
        DA30(I+IT3) = DA10(I-IT2) - DA40(I+1)
        DA20(I+2) = DA40(I+1) + DA10(I)
 10   CONTINUE
      WRITE(6,*) (DA10(K),K=6,33)
      WRITE(6,*) (DA20(K),K=10,37)
      WRITE(6,*) (DA30(K),K=13,40)
      WRITE(6,*) (DA40(K),K=7,34)

      DO 20 J=IT8,IT4,-IT2
        ID20(J*2) = MAX(ID10(J+IT2),ID30(J+1)) * ID40(J+IT3*2)
        ID30(J+IT8) = ID10(J+IT4+IT2) + ID40(IT4+J-1) * 2
        ID40(J+IT2) = ID10(J+5) + IDINT(DA10(J))
        ID10(J+IT7) = ID20(J*2-IT2) - ID30(J+IT3)
 20   CONTINUE
      WRITE(6,*) (ID10(K),K=25,70,2)
      WRITE(6,*) (ID20(K),K=10,100,2)
      WRITE(6,*) (ID30(K),K=100,55,-2)
      WRITE(6,*) (ID40(K),K=54,9,-2)

      DO 30 I=IT8,IT6,-IT1
        DA10(I+IT1) = DA30(I) - DA40(I+IT3)
        DA20(I+IT8) = DA10(I+IT3) + DA30(I+IT8)
        DO 35 J=IT7,IT3,-IT2
          RD10(I,J) = RD20(J*2,I) + RD30(I-1,J*2+1)
          RD40(J,I) = RD10(J,I) + RD20(J+IT7,I) / 2.0
          RD20(J,I) = RD30(I,J+IT2) - RD10(J+IT2,I-IT3)
          RD30(I,J*2) = RD20(I,J+IT2) * RD10(I,J+IT2)
 35     CONTINUE
        DA30(I+IT6) = DA10(I+IT2) - DA20(I+1)
 30   CONTINUE
      WRITE(6,*) (DA10(K),K=51,11,-1)
      WRITE(6,*) (DA20(K),K=100,60,-1)
      WRITE(6,*) (DA30(K),K=60,20,-1)
      WRITE(6,*) ((RD10(I,J),I=50,10,-1),J=20,3,-2)
      WRITE(6,*) ((RD20(I,J),I=20,3,-2),J=50,10,-1)
      WRITE(6,*) ((RD30(I,J),I=50,10,-1),J=40,6,-4)
      WRITE(6,*) ((RD40(I,J),I=20,3,-2),J=50,10,-1)

      DO 40 I=2,10
        ID10(I+I+IT1) = ID20(I**2) + ID30(I*I) - ID40(I+I+1)
        ID20(I*I) = ID40(I*2) * ID10(I+IT1) - ID30(I*I-1)
        ID30(I*I-2) = ID10(I+I) / ID20(I**2-1) + ID40(I+I+I)
        ID40(I) = ID10(I) + ID20(I) + ID30(I)
 40   CONTINUE
      WRITE(6,*) (ID10(K),K=5,21)
      WRITE(6,*) (ID20(K),K=4,100,2)
      WRITE(6,*) (ID30(K),K=2,98,2)
      WRITE(6,*) (ID40(K),K=2,10)

      DO 50 I=IT3,25
        DA30(-I+IT8) = DA20(I+3) + DA10(I*2)
        DA40(-IT3+I+1)=DA10(I*3+I) - DA20(I*2+IT3)
        DA10(-I+I*3) = DA20(I+IT8) + DA30(IT7*2-I)
        DA20(100) = DA20(100) + DA40(I)
 50   CONTINUE
      WRITE(6,*) (DA10(K),K=6,50,2)
      WRITE(6,*) (DA20(K),K=99,100)
      WRITE(6,*) (DA30(K),K=25,3,-1)
      WRITE(6,*) (DA40(K),K=1,23)

      STOP
      END
