PROGRAM  CV3137
  TYPE STR
     REAL*8      DA10(20,20),DA20(20,20),DA30(20,20),DA40(20,20)
     COMPLEX*16  CD10(20,20),CD20(20,20),CD30(20,20)
     LOGICAL*4   LD10(20,20),LD20(20,20),LD30(20,20)
  END type STR
  REAL*8 DX,DY
  TYPE(STR) STR_DATA

  DATA   STR_DATA%CD10,STR_DATA%CD20/400*(2.D0,1.D0),400*(1.5D0,4.D0)/
  DATA   STR_DATA%CD30/400*(1.5D0,4.D0)/
  DATA   STR_DATA%LD10,STR_DATA%LD20,STR_DATA%LD30/1200*.FALSE./
  DATA   IT1/1/,IT2/2/,IT3/3/,IT4/10/

  DO I=1,20
     DO J=1,20
        STR_DATA%DA10(J,I) = I+J*1.1
        STR_DATA%DA20(J,I) = I+J*1.2
        STR_DATA%DA30(J,I) = I+J*1.3
        STR_DATA%DA40(J,I) = I+J*1.4
     END DO
  END DO

  N1 = 2
  DO 10 I=2,IT4
     N2 = I+IT1
     DO K1=1,IT4+2
        DO K2=2,IT4+3
           STR_DATA%CD10(K1,K2) = STR_DATA%CD20(K1,K2+1)-STR_DATA%CD30(K1,K2)
           STR_DATA%DA10(K1,K2) = STR_DATA%DA10(K1,K2+1)+DIMAG(STR_DATA%CD10(K1,K2-1))
           IF ( .NOT.STR_DATA%LD20(K1,K2) ) THEN
              STR_DATA%LD10(K1,K2) = .TRUE.
              STR_DATA%DA40(K1,K2+2) = REAL(STR_DATA%CD10(K1,K2))
           ENDIF
        END DO
     END DO

     DO J1=1,20
        DO J2=1,20
           DO J3=1,20
              STR_DATA%DA10(J1,J3) = STR_DATA%DA20(J1,J3)*STR_DATA%DA40(J1,J3)
              STR_DATA%DA30(J1,J3) = STR_DATA%DA30(J1,J3)*2.D0
           END DO
        END DO
     END DO

     IF ( STR_DATA%LD10(I,20).OR.STR_DATA%LD30(I,20) ) THEN
        STR_DATA%LD20(I,20) = .TRUE.
        STR_DATA%CD10(I,20) = (1.D0,2.D0)
        CONTINUE
     ENDIF

     DO I1=IT2,15
        DO I2=IT3,15
           DO I3=IT4,18
              STR_DATA%DA20(I2,I3) = STR_DATA%DA20(I2-1,I3-1)+STR_DATA%DA30(I2,I3+1)
              DX = DIMAG(STR_DATA%CD30(I2,I3))-STR_DATA%DA40(I1,I2)
              DY = DREAL(STR_DATA%CD20(I2,I3))+STR_DATA%DA30(I1,I2)
              IF ( DX.GT.DY ) THEN
                 STR_DATA%LD10(I2,I3) = .TRUE.
                 STR_DATA%CD20(I2,I3) = DCMPLX(DX,DY)
              ELSE
                 STR_DATA%LD20(I2,I3) = .TRUE.
                 STR_DATA%CD30(I2,I3) = DCMPLX(DY,DX)
              ENDIF
              STR_DATA%DA30(I2,I3) = DMAX1(DX,DY,STR_DATA%DA20(I2,I3))
           END DO
        END DO
        DO II=1,20
           DO I4=1,20
              IF ( STR_DATA%LD10(II,I4).OR.STR_DATA%LD20(II,I4) ) THEN
                 STR_DATA%CD10(II,I4) = STR_DATA%CD10(II,I4)+DCMPLX(STR_DATA%DA10(II,I4))
                 STR_DATA%LD10(II,I4) = .NOT.STR_DATA%LD10(II,I4)
              ENDIF
           END DO
        END DO

        IF ( STR_DATA%LD10(N2,I1).AND.STR_DATA%LD20(I,I1) ) GO TO 10

        DO I5=N1,IT4*2
           DO I6=N2,IT4*2
              STR_DATA%DA20(I5,I6)=STR_DATA%DA10(I5,I6)-DMAX1(STR_DATA%DA30(I5,I6),STR_DATA%DA40(I5,I6))
           END DO
        END DO
     END DO
10   CONTINUE
     WRITE(6,*) ' *** CVCT3501_str *** NO.1 *** '
     WRITE(6,*) '### (DA10) ###'
     WRITE(6,99) STR_DATA%DA10
     WRITE(6,*) '### (DA20) ###'
     WRITE(6,99) STR_DATA%DA20
     WRITE(6,*) '### (DA30) ###'
     WRITE(6,99) STR_DATA%DA30
     WRITE(6,*) '### (DA40) ###'
     WRITE(6,99) STR_DATA%DA40
     WRITE(6,*) '### (CD10) ###'
     WRITE(6,99) STR_DATA%CD10
     WRITE(6,*) '### (CD20) ###'
     WRITE(6,99) STR_DATA%CD20
     WRITE(6,*) '### (CD30) ###'
     WRITE(6,99) STR_DATA%CD30
99   FORMAT(4(1X,E17.5))
     STOP
END PROGRAM CV3137
