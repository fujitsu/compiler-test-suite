      PROGRAM  CV4109
      IMPLICIT    REAL*8(D),REAL*8(Q),LOGICAL*4(L)

      TYPE STR
         REAL*8,DIMENSION(20)::DA10,DA20,DA30,DA40,QA10
         INTEGER*4,DIMENSION(20)::ID10,ID20,ID30
         LOGICAL*4,DIMENSION(20)::LD10,LD20
      END type STR
      TYPE(STR) STR_DATA

      COMMON   DCOM1(20,20),DCOM2(20,20),DCOM3(20,20)
      DATA     STR_DATA%DA10/20*1.0D0/,STR_DATA%DA20/20*2.D0/,STR_DATA%DA30/20*3.D0/,STR_DATA%DA40/20*4.D0/ 
      DATA     STR_DATA%QA10/20*1.0D0/,STR_DATA%ID10/20*2/,STR_DATA%ID20/20*4/,STR_DATA%ID30/20*6/
      DATA     STR_DATA%LD10/20*.FALSE./,STR_DATA%LD20/20*.FALSE./
      DVAL3 = 0
      ICNT  = 0
      DO 5 I=1,20
        IF ( I.LE.10 ) THEN
          STR_DATA%LD10(I*2-1) = .TRUE.
        ENDIF
        DO 5 J=1,20
          DCOM1(I,J) = STR_DATA%DA10(J) * 2.0D0
          DCOM2(I,J) = STR_DATA%DA20(J) - 1.0D0
          DCOM3(I,J) = STR_DATA%DA30(J) + 1.0D0
 5    CONTINUE
      DVAL1= 0.0D0
      DO 10 I=2,20
        DX = STR_DATA%DA10(I) - STR_DATA%DA30(I)
        DY = STR_DATA%DA20(I) + STR_DATA%DA40(I)
        DVAL3 = DVAL3 + DX + DY
        DIF = DVAL1- STR_DATA%DA40(I)
        IF ( DIF .GT. 0.0D0 ) GO TO 10
          DVAL1= STR_DATA%DA40(I)
          IVAL = I
          ICNT = ICNT + 1
          STR_DATA%LD20(I) = .TRUE.
        DVAL2 = 0.0D0
        DO 20 J=1,20
          IF ( DVAL2 .LT. DCOM1(J,I)) THEN
            DVAL2 = DCOM1(I,J)
          ENDIF
          DCOM1(I-1,J) = DCOM2(I,J) - DCOM3(J,I)
        DCOM2(J,I) = STR_DATA%QA10(J) + DCOM3(I,J)
 20   CONTINUE
      N = I
      CALL    SUB1(N,DVAL2,STR_DATA%ID10,STR_DATA%ID20,STR_DATA%ID30)

      DO 30 J=1,N
 30     STR_DATA%DA10(I) = STR_DATA%DA10(I) + STR_DATA%DA20(J) * STR_DATA%DA30(J) - STR_DATA%DA40(J)*STR_DATA%QA10(J)
      WRITE(6,*) ' **** CVCT4109 *** NO.1 **** '
      WRITE(6,*) STR_DATA%DA10(I)
 10   CONTINUE
      WRITE(6,*) ' **** CVCT4109 *** NO.2 **** '
      WRITE(6,*) ' DVAL1 = ',DVAL1,'IVAL = ',IVAL,' ICNT = ',ICNT
      WRITE(6,*) ((DCOM1(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((DCOM2(I,J),I=1,10),J=1,10)
      WRITE(6,*) ' DVAL3 = ',DVAL3

      STOP
      END
      SUBROUTINE   SUB1(N,DVAL,IDIM1,IDIM2,IDIM3)
      IMPLICIT   REAL*8(D)
      COMMON   DCOM1(20,20),DCOM2(20,20),DCOM3(20,20)
      DIMENSION  IDIM1(N),IDIM2(N),IDIM3(N)

      DO 10 I=1,20
        DO 10 J=1,20
 10       DCOM1(I,I) = DCOM2(I,J) + DCOM1(I,I) - DCOM3(J,I) + DVAL
      DO 20 I=1,20
 20     DVAL = DMAX1(DVAL,DCOM1(I,I))

      WRITE(6,*) ' **** CVCT4109 *** SUB1 **** '
      WRITE(6,*) ' DVAL =',DVAL

      DO 30 K=2,N
        IX = MAX( IDIM1(K),IDIM2(K),IDIM3(K) )
        IY = MIN( IDIM1(K),IDIM2(K),IDIM3(K) )
        IDIM1(1) = IDIM1(1) + IX + IY
        IDIM2(K) = IX
        IDIM3(K) = IY
   30 CONTINUE
      WRITE(6,*) ' **** CVCT4109 *** SUB1 *** NO.2 *** '
      WRITE(6,*)  IDIM1(1)
      WRITE(6,*) (IDIM2(K),K=1,N)
      WRITE(6,*) (IDIM3(K),K=1,N)
      RETURN
      END


