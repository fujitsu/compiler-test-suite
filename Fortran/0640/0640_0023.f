      PROGRAM MAIN
      IMPLICIT   REAL*8(D)
      COMMON   DCOM01(40),DCOM02(40),DCOM03(40)
      DIMENSION  DIM01(40),DIM02(40),DIM03(40),DIM04(40),
     *     DIM10(40,40),DIM20(40,40),DIM30(40,40)
      COMPLEX*16  CD010(40),CD020(40),CD030(40)
      LOGICAL*4   LD010(40),LD020(40),LD030(40),F,T
      INTEGER*4   ID040(-20:20)
      INTEGER*4   ID010(-20:20),ID020(-20:20),ID030(-20:20)

      DATA    DIM01/40*2.0D0/,DIM02/40*3.0D0/,DIM03/40*4.0D0/,
     *        DIM04/40*5.0D0/
      DATA    DIM10/1600*2.0D0/,DIM20/800*2.0D0,800*2.0D0/,
     *        DIM30/400*1.0D0,800*3.0D0,400*10.0D0/
      DATA    ID010,ID020,ID030,ID040/41*1,41*2,41*3,41*4/
      DATA    F/.FALSE./,T/.TRUE./
      DATA    IT1/1/,IT2/2/,IT3/3/,IT4/10/,IT5/20/,IT6/40/
      DO 5 I=1,40
        DCOM01(I) = 1.0D0
        DCOM02(I) = 2.0D0
        DCOM03(I) = 3.0D0
        CD010(I) = (2.0D0,4.0D0)
        CD020(I) = (4.0D0,3.0D0)
        CD030(I) = (1.0D0,2.0D0)
        LD010(I) = F
        LD020(I) = F
        LD030(I) = LD010(I)
 5    CONTINUE
      DO 10 J=-20,20
        ID010(J) = J + 21
        ID020(J) = 21-J
        ID030(J) = J + 21
 10   CONTINUE

      DO 20 I=2,19,IT2
        DIM01(I+IT2*2) = DIM02(I*2+IT2) * (DIM03(I+IT2) - DIM04(I+5))
        CD010(I+2) = CD020(IT6) + CD030(I+2) ** 2
        DIM10(I,I+2) = DIM20(IT1,I) - DIM30(I,IT3+1)
        DIM02(I+1) = DIM01(I) + DIM03(I+IT2*2) - DIM04(IT2+1)
        CD020(IT6-I) = CD010(I+2+IT2) - (2.0D0,1.0D0) + CD030(I+20)
        INV = I+IT2
        DIM03(INV-1) = DIM01(INV) * DIM04(I)
        DIM20(I,IT1) = DIM30(I,IT3) * DIM10(2*I-1,I)
        DIM30(IT3,I) = DIM20(1,IT1) * 2.0D0 + DIMAG(CD010(I))
 20   CONTINUE

      WRITE(6,*) '   ** RESULT OF DIM01,DIM02,DIM03 ** '
      WRITE(6,99) (DIM01(K),K=6,24)
      WRITE(6,99) (DIM02(K),K=3,21)
      WRITE(6,99) (DIM03(K),K=3,21)

      WRITE(6,*) '   ** RESULT OF DIM10,DIM20,DIM30 ** '
      WRITE(6,99) (DIM10(K,K),K=2,20)
      WRITE(6,99) (DIM20(K,1),K=2,20)
      WRITE(6,99) (DIM30(3,K),K=2,20)

      WRITE(6,*) '   ** RESULT OF CD010,CD020 ** '
      WRITE(6,99) (CD010(K),K=4,22)
      WRITE(6,99) (CD020(K),K=20,40)

      DO 30 I=11,20
        DO 30 J=35,IT5,-1
          DIM04(J-2-IT1) = DNINT(DSIN(DIM01(J-IT5+1) - DIM02(IT2)))
          DIM03(J+IT2) = DIM01(J+00-IT1-IT2)
     *              + DNINT( DIMAG(CDSQRT(CD010(J-1))) )
          DIM02(1) = DIM02(1) + DIM03(J-IT5+IT2) + DREAL(CD030(J-10))
          DIM10(J-1,I) = DIM20(I*2,J-10) - DIM30(I,J+IT2)
          DIM30(J,I-1) = DIM20(I-3,I*2-IT5)*DIM10(I-3,J-1)
          DIM20(J,I*2) = DIM10(J+1,I+1) - DIM30(I+1,J-3)
 30   CONTINUE

      WRITE(6,99) (DIM02(K),K=1,2)
      WRITE(6,99) (DIM03(K),K=37,22,-1)
      WRITE(6,99) (DIM04(K),K=32,17,-1)
      WRITE(6,99) ((DIM10(I,J),I=19,34),J=10,20)
      WRITE(6,99) ((DIM20(I,J),I=20,35),J=20,40,2)
      WRITE(6,99) ((DIM30(I,J),I=20,35),J=9,19)

      INV1 = 1
      INV2 = 41
      INV3 = 31
      DO 40 I=9,-9,-1
        IF (I.EQ.0) THEN
          LD010(INV1) = .NOT.LD010(INV1)
          GO TO 45
        ENDIF
 46     ID010(I+10) = ID020(I) + ID030(I+10)
        J = I+2
        ID020(J) = ID010(J+1) * ID030(I*2+1)
        ID030(2*I) = ID010(J) + ID020(-10)
        INV2 = INV2 - 1
        CD020(INV2) = CD010(INV3) + CD030(INV1)
        INV3 = INV3 - 1
        CD010(INV3) = CD020(INV2-1) * CD030(INV1)
        CD030(INV1) = CD010(INV3+1) - CD020(INV2)
        DIM01(INV1) = DMAX1( DREAL(CD010(INV3)),DIMAG(CD030(INV1)) )
        DIM02(INV2) = DMAX1( DFLOAT(ID020(J)),DFLOAT(ID030(I) ) )
        IF ( DIM01(INV1) .GE. DIM02(INV2) ) THEN
          LD020(INV1) = T
        ELSE
          LD030(INV1) = T
        ENDIF
        INV1 = INV1 + 1
        GO TO 40

 45     ID010(I) = MIN( IABS(ID020(I)),IABS(ID030(I-10)) )
        GO TO 46
 40   CONTINUE

      WRITE(6,*) '   ** RESULT OF I*4 DATA ** '
      WRITE(6,88) (ID010(K),K=-10,10)
      WRITE(6,88) (ID020(K),K=-10,10)
      WRITE(6,88) (ID030(K),K=-20,20,2)
      WRITE(6,*) '   ** RESULT OF R*8 DATA ** '
      WRITE(6,99) (DIM01(K),K=1,21)
      WRITE(6,99) (DIM02(K),K=20,40)
      WRITE(6,*) '   ** RESULT OF C*16 DATA ** '
      WRITE(6,99) (CD010(K),K=10,30)
      WRITE(6,99) (CD020(K),K=20,40)
      WRITE(6,99) (CD030(K),K=1,20)
      WRITE(6,*) '   ** RESULT OF L*4 DATA ** '
      WRITE(6,*) ' LD010 = ',LD010
      WRITE(6,*) ' LD020 = ',LD020
      WRITE(6,*) ' LD030 = ',LD030

      INV1 = 0
      INV2 = 0
      ICNT = 0
      J = 1
      DO 50 I=-15,10
        IF ( LD010(J).AND.LD020(J) .OR. .NOT. LD030(J) ) THEN
          INV1 = I
          IF (INV1.LE.10 ) ICNT = -1
          IF (INV1.GT.10 .AND. INV1.LE.20) ICNT = 0
          IF (INV1.GT.21 .AND. INV1.LE.30) ICNT = 1
          IF (INV1.GT.31) GO TO 54
        ENDIF
        IF ( ICNT ) 51,52,53
 56     ID020(I) = ID010(I-1) + ID030(I) + ID040(I)
        GO TO 55
 51     ID010(I) = MAX(ID040(I),ID030(I)) + ID020(I-1)
        GO TO 55
 52     ID030(I) = MIN(ID010(I),ID040(I)) * ID020(I)
        GO TO 55
 53     ID040(I) = MAX(ID010(I),MIN(ID020(I),ID030(I)))
        GO TO 55
 54     ID010(I) = ID020(I+1) + (ID030(I) - 2) * ID040(I-1)
        GO TO 56
 55     J = J + 1
        LD020(J) = LD010(J).AND. .NOT. LD030(J)
        LD030(J-1) = LD010(J-1) .OR. LD020(J)
 50   CONTINUE

      WRITE(6,88) (ID010(K),K=-20,10)
      WRITE(6,88) (ID020(K),K=-20,10)
      WRITE(6,88) (ID030(K),K=-20,10)
      WRITE(6,88) (ID040(K),K=-20,10)
      WRITE(6,*) ' ** LD020 ** ',LD020
      WRITE(6,*) ' ** LD030 ** ',LD030
 99   FORMAT(8F10.3)
 88   FORMAT(10I5)

      STOP
      END
