      PROGRAM MAIN
      IMPLICIT  REAL*8(D),COMPLEX*16(C)
      DIMENSION   DA10(20),DA20(20),DA30(20),DA40(20),
     *      DB10(20,20),DB20(20,20),DB30(20,20),
     *      DC10(20,20,20),DC20(20,20,20),DC30(20,20,20)
      DIMENSION   CD10(20),CD20(20),CD30(20,20),CD40(20,20,20)

      DATA   DA10/20*1.D0/,DA20/20*2.D0/,DA30/20*3.D0/,DA40/20*4.D0/
      DATA   DB10/400*1.D0/,DB20/400*2.D0/,DB30/400*4.D0/
      DATA   DC10/8000*2.D0/,DC20/8000*10.D0/,DC30/8000*1.D0/
      DATA   CD10/20*(2.D0,1.D0)/,CD20/20*(2.D0,4.D0)/
      DATA   CD30/400*(3.D0,2.D0)/,CD40/8000*(4.D0,5.D0)/
      DATA   IT1/1/,IT2/2/,IT3/10/

      DO 10 I=1,10
        N = I + 10
        DA10(I) = DA20(I) + DA40(N)
          DO 20 J1=1,15,2
            DB20(I,J1) = DB10(I,J1) * DB30(N,J1)
            DX1= DB20(I,J1)
            DY1= DB20(N,J1) * 2.D0
            IF ( DIMAG(CD30(I,J1)) .GT. DX1 ) THEN
              DX1= DIMAG(CD30(I,J1))
            ENDIF
            DO 25 K1=2,10,IT2
              DC10(I,J1,K1) = DC20(I,J1+1,K1+IT2) + DC30(I,J1,K1+1)
              DX2 = DC10(I,J1,K1-1) * 2.D0 - DC30(I,J1,K1)
              DY2 = DC20(I,J1+IT2,K1) + DIMAG( CD40(I,J1,K1+IT2) )
              CD40(I,J1,K1) = DCMPLX(DX2,DY2)
 25         CONTINUE
            CD30(I,J1) = CD30(I,J1) + DCMPLX(DX1,DY1)
 20       CONTINUE
        DA40(I) = DA30(N) + DA10(N)
          DO 30 J2=2,N
            DO 35 K2=2,IT3
              DB30(J2,K2) = DB20(J2,K2) - DC30(I,J2,K2)
              DB20(I,K2)  = DB10(J2,K2) - DC20(I,J2,K2)
              DB10(J2,K2) = DMAX1(DB30(I,K2),DB20(I,K2))
              DC20(I,J2,K2) = DC10(I,J2,K2+IT1)
 35         CONTINUE
            DX3 = DSQRT( DABS(DB10(J2,IT3)) ) + 1.D0
            DY3 = DMOD( DB20(N,J2),DB30(J2,IT3) )
            CD30(I,J2) = DCMPLX( DX3,DY3 )
 30       CONTINUE
        DA30(I) = DA40(N) + DA20(I)
        CD10(I) = CD10(N) + DCMPLX( DA30(I),DA40(I) )
 10   CONTINUE
      WRITE(6,9999) ' (DA10) ',(DA10(K),K=1,10)
      WRITE(6,9999) ' (DA30) ',(DA30(K),K=1,10)
      WRITE(6,9999) ' (DA40) ',(DA40(K),K=1,10)
      WRITE(6,9999) ' (CD10) ',(CD10(K),K=1,10)
      WRITE(6,9999) ' (DB10) ',((DB10(I,J),I=1,15),J=1,15)
      WRITE(6,9999) ' (DB20) ',((DB20(I,J),I=1,15),J=1,15)
      WRITE(6,9999) ' (DB30) ',((DB30(I,J),I=1,15),J=1,15)
      WRITE(6,9999) ' (CD30) ',((CD30(I,J),I=1,15),J=1,15)
      WRITE(6,9999) 
     * ' (DC10) ',(((DC10(I,J,K),I=1,10),J=1,15,2),K=2,10,2)
      WRITE(6,9999) ' (DC20) ',(((DC20(I,J,K),I=1,10),J=1,15),K=1,10)
      WRITE(6,9999) ' (CD40) ',(((CD40(I,J,K),I=1,10),J=1,10),K=1,10)
      DO 40 I=1,19,2
        N = I + 1
        DO 45 J1=11,20
         DO 50 K1=1,10
           DX1 = DC10(I,J1,K1) + DC20(I,J1,K1)
           DY1 = DC10(I,J1,K1) + DC30(I,J1,K1)
           IF ( DREAL(CD40(I,J1,K1)).GT. DX1 ) THEN
             DX1 = DREAL( CD40(I,J1,K1) )
           ENDIF
           IF ( DIMAG( CD40(I,J1,K1) ) .GT. DY1 ) THEN
             DY1 = DIMAG( CD40(I,J1,K1) )
           ENDIF
           CD40(I,J1,K1) = DCMPLX(DX1,DY1)
 50      CONTINUE
         DC10(I,J1,1) = DNINT( DC30(I,J1,J1) / DC20(I,J1,K1) )
 45     CONTINUE
        DO 60 J2=IT2,10
          DA10(I) = DA10(I) +  DMOD( DA20(J2),DA30(J2) )
          DO 60 K2=1,J2
            DA20(K2) = DA40(K2) - DIMAG( CD20(J2) )
            DA30(K2) = DA40(K2) * 2.D0
            CD20(K2) = DCMPLX( DA20(K2),DA30(K2) )
 60     CONTINUE
        DA40(N) = DA40(I) + ( DNINT( DSQRT( DA10(N) ) ) )
        DO 70 J3=20,11,-1
          DB10(10,J3) = DA40(J3) + DA10(I) - DA20(J3)
          DO 80 K3=10,1,-1
            DX3 = DB10(K3,J3) - DB20(K3,J3)
            DY3 = DB10(K3,J3) - DB30(K3,J3)
            DB30(J3,K3) = DMAX1(DX3,DY3)
            CD30(J3,K3) = DCMPLX(DX3,DY3)
 80       CONTINUE
          DA20(J3) = DB30(J3,10) - DA10(I)
 70     CONTINUE
 40   CONTINUE
      WRITE(6,9999) ' (DA10) ',DA10
      WRITE(6,9999) ' (DA20) ',DA20
      WRITE(6,9999) ' (DA30) ',DA30
      WRITE(6,9999) ' (DA40) ',DA40
      WRITE(6,9999) ' (CD20) ',CD20
      WRITE(6,9999) ' (DB30) ',((DB30(I,J),I=20,11,-1),J=10,1,-1)
      WRITE(6,9999) ' (CD30) ',((CD30(I,J),I=20,11,-1),J=10,1,-1)
      WRITE(6,9999) ' (DB10) ',(DB10(10,K),K=20,11,-1)
      WRITE(6,9999) ' (CD40) ',(((CD40(I,J,K),I=1,10),J=1,20),K=1,10)
      WRITE(6,9999) ' (DC10) ',((DC10(I,J,1),I=1,19,2),J=11,20)
9999  format(a,(g20.6))
      STOP
      END
