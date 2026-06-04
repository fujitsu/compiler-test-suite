!             CVCT3151            LEVEL=5        DATE=87.04.13
!*******************************************************************C
!  1. PROGRAM NAME : CVCT3800                                       C
!  2. PURPOSE      : VECTORIZE MESSAGE TEST                         C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VMSG,VPL(4),ADV(EVL)                           C
!  5. HISTORY      : 1983-07-04                                     C
!*******************************************************************C
PROGRAM  CV3151
  IMPLICIT   REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)
  COMMON  /BLK1/   DA10(50),DA20(50),DA30(50),DA40(50)
  COMMON  /LIST/   IL10(50),IL20(50),IL30(50)
  DIMENSION    DB10(100),DB20(100),DB30(100),DC10(10,10),DD10(20), &
       CD10(50),CD20(50),CD30(50)
  type TAG
     logical LD10(50),LD20(50),LD30(50)
  end type TAG
  type (TAG) st
  EQUIVALENCE   (DB10(1),DA10(1)),(CD10(1),DA10(1))
  EQUIVALENCE   (CDV,DB20(1)),(DB20(1),DX),(DB20(2),DY)
  EQUIVALENCE   (DB30(1),DC10(1,1)),(DA40(20),DD10(1))
  DATA   IT1/1/,IT2/2/,IT3/5/,IT4/10/,IT5/20/
  DATA   st%LD10,st%LD20,st%LD30/150*.FALSE./
  !
  DY = 0
  DO I=1,50
     DA30(I) = 1.D0 - DFLOAT(I)
     DA40(I) = DFLOAT(I) - 1.D0
     N1 = I+50
     DB10(I) = DFLOAT(I)
     DB10(N1) = 1.00D0 - DFLOAT(I)
     DB20(I) = 2.D0 * DFLOAT(I)
     DB20(N1) = 25.D0 - DFLOAT(I)
     DB30(I) = DFLOAT(N1) - 2.D0
     DB30(N1) = 51.D0 - DFLOAT(I)
     CD20(I) = (1.D0,2.D0)
     CD30(I) = DCMPLX(DX,DY)
     IF ( I.GT. 20 ) GO TO 10
     st%LD10(I) = .FALSE.
     st%LD20(I) = .TRUE.
     st%LD30(I) = .TRUE.
     IF ( I.GT. 10 ) GO TO 10
     st%LD10(2*I) = .NOT.st%LD10(I)
     st%LD20(3*I) = .NOT.st%LD20(I)
     st%LD30(I) = .NOT.st%LD10(I)
10 END DO
  !
  !
  N = 51
  DO I=1,50
     NI = N-I
     IL10(I) = I
     IL20(I) = NI
     IL30(I) = I+1
     IF ( I.EQ.50 ) IL30(I) = N-1
  END DO
  !
  !     JND239I-I          EQUIVALENCE DATA @1
  !     JND241I-I          @1 AND @2 BELONG TO THE SAME EQU. GROUP
  !
  DO J=IT2,IT4
     DX = DA10(IL10(J)) * DA30(IL20(IL20(J)))
     DO I=J,IT5
        DY = DA40(I) * 2.D0 - DA20(J)
        IF ( st%LD10(I) .AND. .NOT.st%LD30(I-1) ) THEN
           st%LD20(I) = .TRUE.
           DZ = DB30(I*2) * DA20(IT5) / DX
        ELSE
           st%LD10(I) = .NOT.st%LD10(I) .OR. .NOT.st%LD20(IT5)
           DZ = DX - DIMAG(CD30(J))
        ENDIF
        CDV = CDV + DCMPLX(DY,DZ)
     END DO
  END DO
  WRITE(6,*) ' *** CVCT3800 ** NO.1 *** '
  WRITE(6,*) ' CDV = ',CDV
  DO I=1,IT5,2
     DX = DX + DB10(I*2)- DB30(I*3)
     DB10(I*2+6) = DIMAG(CD20(I)) - DFLOAT(IL20(I))
     DY = DB30(I*2) * DFLOAT(IT2)
     DY = DMAX1(DY,DB10(I*2))
  END DO
  WRITE(6,*) ' *** CVCT3800 ** NO.2 *** '
  WRITE(6,*) '  DX = ',DX
  WRITE(6,*) '  DY = ',DY
  !
  !     JND244I-I          DIFFERENT FIRST ADDRESS (EQU. OFFSET )
  !     JND246I-I          NOT SAME DATA TYPE
  !     JND247I-I          DIFFERENT DIMENSION NUMBER
  !     JND248I-I          DIFFERENT LOWER OR UPPER BOUNDS.
  !
  DO K=IT2,IT3
     LX = st%LD10(K) .OR. (.NOT.st%LD20(K) .AND. .NOT.st%LD30(K))
     DO J=IL10(K),15
        CD10(J) = CD20(J+1)*CD30(J-1) - CDV
        DA40(J) = DABS(DA30(K) - DIMAG(CD10(J-1)) )
        IF ( LX ) THEN
           IF ( st%LD10(J) .OR. st%LD20(J+1) ) THEN
              DA30(K) = DA20(J+5)
           ENDIF
        ELSE
           IF ( (st%LD10(J) .OR. st%LD30(J+1)) .AND. J.LE.10 ) THEN
              DB30(IL30(J)) = DB10(J) + DC10(IL10(K),J)
              st%LD10(J) = .NOT.st%LD20(J) .OR. LX
           ENDIF
        ENDIF
        DD10(J) = DD10(J+1) + DIMAG(CD20(K))
        IL20(IT1) = IL20(IT1) + IL30(J)
     END DO
  END DO
  WRITE(6,*) ' *** CVCT3800 ** NO.3 *** '
  WRITE(6,*) ' (DB10) ',DB10
  WRITE(6,*) ' (DB20) ',DB20
  WRITE(6,*) ' (DB30) ',DB30
  WRITE(6,*) ' (CD20) ',CD20
  WRITE(6,*) ' (CD30) ',CD30
  WRITE(6,*) ' (LD10) ',st%LD10
  WRITE(6,*) ' (LD20) ',st%LD20
  WRITE(6,*) ' (LD30) ',st%LD30
  WRITE(6,*) ' (IL20) ',IL20
  STOP
END PROGRAM CV3151
