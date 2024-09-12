      PROGRAM MAIN
      IMPLICIT     REAL*8(D),LOGICAL*4(L)
      IMPLICIT     INTEGER*2(H),REAL*4(R)
      COMMON       DA10(50),DA20(50),DA30(50),DA40(50)
      DIMENSION    DB20(50,50),DB30(50,50),DB10(50,50)
      DIMENSION    HD10(50),HD20(50),RD10(50)
      DIMENSION    LD10(50),LD20(50),RD20(50)
      INTEGER*4    ID10(-20:20),ID20(-20:20)
      COMPLEX*16   CD10(50),CD20(50)
      INTEGER*4    NNN/1/
      DATA    DB20/2500*9.0D0/,DB10/2500*4.0D0/,DB30/2500*12.0D0/
      DATA    HD10/50*2/,HD20/50*4/
      DATA    LD10/50*.FALSE./,LD20/50*.FALSE./
      DATA    RD10/50*2.0/,RD20/50*4.0/
      DATA    ID10/41*0/,ID20/41*0/
      DATA    CD10/50*(2.0D0,4.0D0)/,CD20/50*(4.0D0,16.0D0)/
      DATA    IT2/2/,IT3/10/,IT4/20/,IT5/50/
      IVAL1 = 0
      IVAL2 = 0
      DO 41 JJ=1,NNN
      J = -20
      DO 40 I=1,41
        IF (DB10(I,I) .GT. DB20(I,I) ) THEN
          ID10(J) = IDINT(DB10(I,I))
          ID20(J) = IDINT(DB20(I,I))
        ELSE
          ID10(J) = IDINT(DB20(I,I))
          ID20(J) = IDINT(DB10(I,I))
        ENDIF
        IVAL1 = ID10(J) * 2
        IVAL2 = ID10(J) + ID20(J)
        IF (IVAL1 .GT. IVAL2 ) THEN
          ID10(J) = IVAL1
          LD10(I) = .TRUE.
        ELSE
          ID20(J) = IVAL2
          LD20(I) = .TRUE.
        ENDIF
        J = J + 1
 40   CONTINUE
 41   CONTINUE
       WRITE(6,*) ' *** PROGRAM  ***'
       WRITE(6,*) IVAL1,IVAL2
       WRITE(6,*) ID10,ID20
       WRITE(6,*) LD10,LD20
      STOP
      END
