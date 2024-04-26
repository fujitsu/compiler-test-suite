      PROGRAM MAIN
      INTEGER A,B,C,D,X(10),Y(10,10),TOTAL
      CHARACTER*7 CHR
      LOGICAL FLAG
      DATA A/10/
      DATA B,C,D/10,10,10/
      DATA X/10,10,10,10,10,10,10,10,10,10/
      DATA ((Y(I,J),I=1,10),J=1,10)/100*10/
      DATA CHR(1:4)/'FORT'/
      DATA CHR(5:7)/'RAN'/
      WRITE(6,*)'#### START ####'
      TOTAL=0
      TOTAL=A+B+C+D
      DO 10 I=1,10
   10   TOTAL=TOTAL+X(I)
      DO 20 I=1,10
        DO 20 J=1,10
   20     TOTAL=TOTAL+Y(I,J)

      FLAG=TOTAL.EQ.1140.AND.CHR.EQ.'FORTRAN'
      IF(FLAG) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
