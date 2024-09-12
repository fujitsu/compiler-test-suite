      PROGRAM MAIN
      IMPLICIT REAL*8(D)
      DIMENSION DA10(20,20),DA20(20,20),DA30(20,20),DA40(20,20),
     *         DB10(10,10,10),DB20(10,10,10)

      DATA   DA10,DA20,DA30/400*2.D0,400*3.D0,400*5.D0/
      DATA   DA40/200*10.D0,200*-5.D0/
      DATA   DB10,DB20/1000*-1.D0,1000*-2.D0/
      DATA   IT1/1/,IT2/2/,IT3/3/,IT4/10/,IT5/15/

      DO 10 I=1,IT4
       DO 10 J=2,IT5
         DA10(I,J) = DA30(I,J+IT2+1) * DA40(J+1,I+IT3)
         DA30(I,J) = DA10(I+IT1,J) - DA20(J-1+IT2,I+IT2+IT3)
         DA40(J,I+IT3-1) = DA20(I,J) * 2.D0
 10   CONTINUE

      DO 20 K=1,IT2
       DO 20 J=2,IT3
        DO 20 I=2,IT4
          DB10(I,J,K) = DB10(I-1,J+IT2,K+IT1+1) + DA10(I-1,J+K)
          DB20(I,J,K) = DB20(I-1,J-K+1,K+IT2) + DA20(I+K,I+J)
 20   CONTINUE

      N1 = 1
      DO 30 I=IT3,2,-1
       N2 = I
       DO 30 J=2,IT4
         DA20(J+IT4,I) = DA30(I,N2+1) - DA40(J-1+N1,N1+I)
         IF ( DA20(J,I) .GT. 10.D0 ) THEN
           DA10(J+N1,I+N1+IT2) = DA20(J,I) - DA10(J,I)
           N2 = N2 + 1
         ENDIF
         DA40(J,I+IT2) = DA10(J,I+IT4) * 2.D0
         DA30(I,N2+2) = (DA20(J,I+IT2)-DA40(J+1,I+IT3)) * 2.D0
  30  CONTINUE

      DX = 0.0D0
      DO 40 I=3,IT4
       DO 40 J=5,IT4
        DY = 0.0D0
        N1 = I-1
        N2 = J-1
        N3 = 1
        DO 50 K=2,IT4-1
          DB20(K-1,J,N1-1) = DA10(K,N1)
          DX = DMAX1( DB10(I,J,K),DA20(I,J) )
          IF ( DX .LT. 10D0 ) GO TO 55
            DB20(N1,N2,K) = DX
  55      CONTINUE
          DB10(I,N2,K+1) = DB20(I-1,N3,K-1)+DA30(I,K)
          DY = DY + DMIN1(DX,DB10(N2,N3,K-1))*2.D0
  50    CONTINUE
        DB10(I,J,K) = DY
  40  CONTINUE

      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (DA40) ',DA40
      WRITE(6,*) ' (DB10) ',DB10
      WRITE(6,*) ' (DB20) ',DB20
      STOP
      END
