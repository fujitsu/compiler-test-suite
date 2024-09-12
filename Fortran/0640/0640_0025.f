      PROGRAM MAIN
      REAL*8   DA10(40),DA20(40),DA30(40),DA40(40),
     *         DB10(40,40),DB20(40,40),DB30(40,40),
     *         DC10(20,20,20),DC20(20,20,20),DC30(20,20,20),
     *         DD10(8,8,8,8,8),DD20(8,8,8,8,8)
      LOGICAL*4 LD10(40),LD20(40,40),LD30(20,20,20)

      DATA     DA10/40*1.0D0/,DA20/40*2.0D0/,DA30/40*3.0D0/
      DATA     DA40/40*4.0D0/
      DATA     DB10/1600*5.0D0/,DB20/1600*4.0D0/,DB30/1600*2.5D0/
      DATA     DC10/8000*2.0D0/,DC20/5000*4.0D0,3000*10.0D0/
      DATA     DC30/8000*4.0D0/
      DATA     LD10/40*.FALSE./,LD20/1600*.FALSE./,LD30/8000*.FALSE./
      DATA     IT1/1/,IT2/2/,IT3/3/,IT4/4/,IT5/10/

      DO 10 I=IT1,IT4*4
        DA10(I*2+1) = DA20(I+IT4) * DA30(I+IT5)
        DA10(I*2+8) = DA40(I) - DA20(I)
        DO 20 J=1,IT4*2
          DB10(I,J*2) = DB20(I,J*2+1) + DB30(I*2,J*2)
          DB10(I,J*2+1) = DB20(I,J*2) + DB30(I*2,J*2)
          DO 30 K1=1,IT5
            DC10(I,J,K1) = DC20(I,J,K1) + DC30(I,J,K1+1)
            DC20(I,J,K1+10) = DC10(I,J,K1+1) * DC30(I,J,K1)
            IF ( I .LE. 8  .AND.
     *           J .LE. 8  .AND.
     *           K1.LE. 8       ) THEN
             DO 35 K2=1,8
              DO 35 K3=1,8
               DD10(I,J,K1,K2,K3) = DB30(K2,K3)
               DD20(I,J,K1,K2,K3) = DC30(K1,K2,K3)
 35          CONTINUE
           ENDIF
 30       CONTINUE
          DB20(I+20,J*2) = DB10(I+1,J*2+5) / DB30(I,J)
 20     CONTINUE
        DA20(I) = DA10(I*2) + DA30(I+1)
        DA40(I+IT4*4) = DA20(I+1) + DA30(I)
 10   CONTINUE

      WRITE(6,*) ' ** DA10 ** DA20 ** DA40 ** '
      WRITE(6,999) DA10
 999  FORMAT (8F10.6)
      WRITE(6,999) (DA20(K),K=1,20)
      WRITE(6,999) (DA40(K),K=21,40)
      WRITE(6,*) ' ** DB10 ** DB20 ** '
      WRITE(6,999) ((DB10(I,J),I=1,20),J=2,40)
      WRITE(6,999) ((DB20(I,J),I=21,40),J=2,40,2)
      WRITE(6,*) ' ** DC10 ** DC20 ** '
      WRITE(6,999) ((( DC10(I,J,K),I=1,20),J=1,20),K=1,20)
      WRITE(6,999) ((( DC20(I,J,K),I=1,20),J=1,20),K=1,20)
      WRITE(6,*) ' ** DD10 ** DD20 ** '
      WRITE(6,999) ((((( DD10(I1,I2,I3,I4,I5),I1=1,2),I2=2,3),
     *         I3=3,4),I4=4,5),I5=2,3)
      WRITE(6,999) ((( DD20(1,2,K1,K2,K3),K1=3,4),K2=4,5),K3=6,7)

      DO 40 I1=1,40
        IF (DA10(I1).EQ.1.0D0) THEN
          LD10(I1)= .TRUE.
        ENDIF
        DO 40 I2=1,20
          IF (DB10(I1,I2).EQ.5.0D0) THEN
            LD20(I1,I2) = .TRUE.
          ENDIF
          DO 40 I3=1,10
            IF (I1.GT.10 ) GO TO 40
            IF ( DC10(I1,I2,I3) .GE. 10.0D0 ) THEN
              LD30(I1,I2,I3) = .TRUE.
            ENDIF
 40   CONTINUE

      N1 = 0
      N2 = 0
      N3 = 0
      DO 45 I=1,40
        IF ( LD10(I) ) THEN
          N1 = N1 + 1
        ENDIF
        DO 45 J=1,40
          IF ( LD20(I,J) ) THEN
            N2 = N2 + 1
          ENDIF
          DO 45 K=1,10
            IF ( I.LE.10  .AND.
     *           J.LE.10  .AND.
     *           LD30(I,J,K)   ) THEN
              N3 = N3 + 1
            ENDIF
 45   CONTINUE
      DO 50 I=1,40
        IF ( LD10(I) ) THEN
          ICNT = I
           GO TO 55
        ENDIF
 50   CONTINUE
 55   WRITE(6,*) '  N1 = ',N1,' N2 = ',N2,' N3 = ',N3
      WRITE(6,*) '  ICNT = ',ICNT

      DO 60 I =IT3,IT3*10,IT2
        DA30(I+IT5) = DA10(I+IT2) / 2.0D0 * DA20(I+IT3*2)
        DA40(I+1) = DA30(I+9) - DA10(I+IT2*2) + DA20(I+IT3)
        DA10(I) = DA20(I+IT2+IT3) * DA40(I-IT2)
        DA20(1) = DA20(1) + DA30(I) + DA40(I)
 60   CONTINUE

      WRITE(6,999) (DA30(K),K=23,40)
      WRITE(6,999) (DA40(K),K=4,31)
      WRITE(6,999) (DA10(K),K=3,30)
      WRITE(6,99) ' ** DA20(1) = ',DA20(1),' ** '
 99   FORMAT(A14,F10.6,A4)
      ICNT = 0
      INV = 1
      DO 65 I=18,3,-1
        DB20(I,I+2) = DB30(I,INV) + DB10(INV,I+2)
        DB30(I,INV+1) = DB20(I-1,I+1) * DB10(INV+1,2*I-1)
        DB10(INV,I) = DB20(2*I,I) - DB30(I*2,INV) + DB10(INV,I)
        INV = INV + 1
 65   CONTINUE
      WRITE(6,999) ((DB10(I,J),I=1,20),J=23,3,-1)
      WRITE(6,999) ((DB20(I,J),I=3,23),J=5,25)
      WRITE(6,999) ((DB30(I,J),I=23,3,-1),J=2,22)

      DO 70 I1=2,13
       DO 70 I2=IT2,10
        DO 70 I3=IT2,IT5/2
          DC10(I1,I2,I3+IT5) = DC20(I1,I2,I3*2+1)
     *                            + DC30(I1,I2,I3+IT2)
          DC20(I1,I2,I3) = DC10(I1,I2,I3+IT2) - DC30(I1,I2*2,I3*2)
          DC30(I1,I2,I3) = DC10(I1,I2-1,I3-1) + DC20(I1,I2,I3+1)
          DO 70 K1=1,10
           IF ( I1 .LE. 5   .AND.
     *          I2 .LE. 5   .AND.
     *          I3 .LE. 7   .AND.
     *          K1 .LE. 6        ) THEN

            DO 75 K2=5,1,-1
              DD10(I1,I2,I3,K1+IT2,K2) = DD10(I1,I2,I3,K1+IT2,K2+IT3)
     *                   + DD20(I1,I2,I3,K1,K2)
 75         CONTINUE
           ENDIF
 70   CONTINUE

      WRITE(6,999) (((DC10(I,J,K),I=2,13),J=2,13),K=12,20)
      WRITE(6,999) (((DC20(I,J,K),I=2,13),J=2,13),K=2,10)
      WRITE(6,999) (((DC30(I,J,K),I=2,13),J=2,13),K=2,10)
      WRITE(6,999)
     *     (((((DD10(I,J,K,L,M),I=2,3),J=4,6),K=3,5),L=3,4),M=3,4)

      STOP
      END
