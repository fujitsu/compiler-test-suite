      PROGRAM MAIN
      REAL*4 A(10),B(10,20),C(10,30),D(10,30,50)
      DATA A/10*1./,B/200*1./,C/300*1./,D/15000*1./
      DATA N/1/
C
      DO 10 I=1,10
         A(I) = I
         A(I) = A(I) + 1
         DO 20 J=1,20
            B(I,J) = B(I,J) + N
   20    CONTINUE
         DO 30 K=1,30
            C(I,K) = C(I,K) + B(I,5)
            DO 30 L=1,50
               D(I,K,L) = L
   30    CONTINUE
         N = N + 1
   10 CONTINUE
      WRITE(6,*) ' ## A ## '
      WRITE(6,1) A
      WRITE(6,*) ' ## B ## '
      WRITE(6,1) B
      WRITE(6,*) ' ## C ## '
      WRITE(6,1) C
      WRITE(6,*) ' ## D ## '
      WRITE(6,1) (((D(I,J,K),I=1,10,2),J=1,30,3),K=1,50,5)
 1    format(10f7.2)
      STOP
      END
