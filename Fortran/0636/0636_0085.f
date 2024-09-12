      PROGRAM MAIN
      IMPLICIT REAL*8(A-D),LOGICAL*4(L)
      DIMENSION  DA10(50,50),DA20(50,50),DA30(50,50),DA40(50,50),
     *           LD10(50,50),LD20(50,50)
      INTEGER*4 IN(50)/50*5/
      DATA     DA10/2500*1.0D0/,DA20/2500*2.0D0/
      DATA     DA30/2500*0.5D0/,DA40/2500*4.0D0/
      DATA     LD10/2500*.FALSE./,LD20/2500*.FALSE./
      DATA     NN/50/
      DO 12 J=1,2
      K=1
      DO 10 I=1,50
10      DA10(I,K)=DA10(I,J)
12      K=K+1
      K=4
      DO 22 J=1,2
      DO 20 I=1,50
20      DA10(I,K)=DA10(I,J)
22      K=K-1
      DO 32 J=1,2
      K=J*2
      DO 30 I=1,50,2
30      DA10(I,K)=DA10(I,J)
32      K=K-1
      K=5
      DO 42 J=1,2
      K=K+1
      DO 40 I=40,50
40      DA10(I,K)=DA10(I,J)
42      K=K-1
       WRITE(6,*) DA10,DA20
      STOP
      END
