      PROGRAM MAIN
      IMPLICIT  REAL*8(D),LOGICAL*4(L)
      DIMENSION   DA10(30),DA20(30),DA30(30),LD10(30),
     *          DB10(10,20),DB20(10,20),DB30(-10:-1,-20:-1),
     *          DC10(10,20,5),DC20(10,20,5),DC30(-10:-1,-20:-1,-5:-1)
      COMMON   /AA/  ID10(20,20),ID20(20,20),ID30(20,20)
      COMMON   /BB/  DVAL1,DVAL2,DVAL3
      COMMON   /CC/  ICNT1,ICNT2

      DATA     DA10/30*1.0D0/,DA20/30*2.D0/,DA30/30*3.D0/
      DATA     DB10/200*4.D0/,DB20/200*5.D0/,DB30/200*3.D0/
      DATA     LD10/30*.FALSE./
      DATA     DC10/1000*1.D0/,DC20/1000*0.5D0/,DC30/1000*2.D0/
      ICNT1 = 1
      ICNT2 = 401
      DO 5 I=1,20
       DO 5 J=1,20
         ICNT2 = ICNT2 - 1
         ID20(I,J) = ICNT2
         ID30(I,J) = ICNT1
         ID10(I,J) = ICNT2 - ICNT1
         ICNT1 = ICNT1 + 1
 5    CONTINUE

      DO 10 I=2,3
        N =  ID30(1,I)*3
        DO 10 J=2,N
          DA10(J) = DA20(J-1) + DA30(J)
          DO 20 K=9,2,-1
            DB10(K,J) = DB20(K-1,J) * DB30(-K+1,-J-1) - DB10(K-1,J)
            DO 30 M=2,5
              DC10(K,J,M) = DC10(K,J,M) + DC30(-K+1,-J+1,-M)
              DC20(K,J,M) = DC20(K-1,J+1,M) - DC30(-K,-J,-M)
 30           DC30(-K,-J,-M) = DB10(M,1) + DC30(-K,-J,-M)
            DB20(K,J) = DB10(K-1,J-1) - DA10(J+N)
 20       CONTINUE
          DA20(J+N) = DA10(J-1) - DA20(J)
          DA30(J+N) = DA10(J+N) + DA30(J-1)
 10   CONTINUE

      DO 40 I=1,5
       DO 40 J=10,1,-1
         DB20(I,J) = DB10(I,J) + DB30(-I,-J)
         DB30(-J,-I)=DB10(I,J) - DB20(I,2*J) / 2.0D0
         DVAL1 = DMAX1( DB20(I,J),DB30(-I,-J) )
         IF ( DB10(I,J) .GT. DVAL1 ) THEN
           DA30(I) = DA30(I) + DVAL1
           N1 = I + 5
           DB10(N1,J) = DVAL1
         ENDIF
 40   CONTINUE

      WRITE(6,*) ' (DA10) ',(DA10(K),K=1,20)
      WRITE(6,*) ' (DA20) ',(DA20(K),K=11,30)
      WRITE(6,*) ' (DA30) ',(DA30(K),K=11,30)
      WRITE(6,*) ' (DB10) ',DB10
      WRITE(6,*) ' (DB20) ',DB20
      WRITE(6,*) ' (DB30) ',((DB30(I,J),I=-10,-1),J=-5,-1)
      WRITE(6,*) ' DVAL1 = ',DVAL1
      IF ( DA30(15) .GT. DA10(15) ) THEN
        NN= 2
      ELSE
        NN = 1
      ENDIF
      DO 50 III=10,9,-1
        DO 55 I=2,8,NN
          DO 56 J=2,10
            DB30(-I,-J) = DB10(I,J+NN) + DB20(I,J+NN)
            DB10(I,J) = DMIN1( DB10(I,J),DB20(J,I) )
           DO 56 K=1,3
             DC10(I,J,K) = DC20(I,J+NN,K) + DC30(-I,-J,-K-NN)
             DC20(I,J,K) = DC10(I-1,J-1,K) - DC30(-I,-J*2,-K)
 56          DC30(-I,-J,-K) = DC20(I-1,J,K) + DC30(-I,-J*2,-K-NN)
          IF ( DA10(I) .LE. DA20(I)  .OR.
     *         DA10(I) .GE. DA30(I)       ) THEN
            LD10(I) = .TRUE.
          ELSE
            LD10(I+15) = .NOT. LD10(I+15)
          ENDIF
 55     CONTINUE

        DVAL1 = DA10(III)
        DVAL2 = DB10(III,1)
        DVAL3 = DC10(III,1,1)
        NNN = III
        CALL   SUB1( DA10,DA20,DA30,NNN )
 50   CONTINUE

      WRITE(6,*) ' (DB10) ',((DB10(I,J),I=1,10),J=1,10)
      WRITE(6,*) ' (DB30) ',((DB30(I,J),I=-10,-1),J=-10,-1)
      WRITE(6,*) ' (DC10) ',DC10
      WRITE(6,*) ' (DC20) ',DC20
      WRITE(6,*) ' (DC30) ',(((DC30(I,J,K),I=-10,-1),J=-10,-1)
     *                           ,K=-3,-1)
      WRITE(6,*) ' (LD10) ',LD10

      STOP
      END
      SUBROUTINE   SUB1(DIM1,DIM2,DIM3,NN)
      IMPLICIT  REAL*8(D),INTEGER*4(I)
      COMMON   /AA/ ID10(20,20),ID20(20,20),ID30(20,20)
      COMMON   /BB/ DVAL1,DVAL2,DVAL3
      COMMON   /CC/ ICNT1,ICNT2
      DIMENSION     DIM1(NN),DIM2(NN),DIM3(NN)
      ICNT1 = 0
      DO 10 I=1,NN
        DO 20 J=1,20
          ID10(I,J) = ID10(I,J) - ICNT2
          IVAL1= IDINT(DVAL1)
          IVAL2 = IDINT(DVAL2)
          IVAL3 = IDINT(DVAL3)
          ID20(I,J) = (ID20(I,J) + IVAL2) - IVAL3 * IVAL1
          ID30(I,1) = ID30(I,1) + MOD( ID30(I,J),IVAL1 )
 20     CONTINUE
        DIM1(I)= DMAX1( DIM1(I),DIM2(I),DIM3(I) )
 10   CONTINUE

      WRITE(6,*) ' (ID30)  ',(ID30(I,1),I=1,NN)
      RETURN
      END
