      PROGRAM MAIN
      INTEGER  ICARD(10)/0,4*10,0,4*9/,NCHAR/10/
      INTEGER  IBLANK/0/,  INTEG(12)/12*10/,IREAL(3)/3*100/,
     1                    NINT/12/, NREA/2/
      ITYPE   = 0
      DO  70 I=1,NCHAR
       IF( ICARD(I) .EQ. IBLANK   ) GO TO 70
        DO  20 J=1,NINT
         IF( ICARD(I) .EQ. INTEG(J) ) GO TO 60
   20   CONTINUE
        IF( ICARD(I) .EQ. IREAL(1) ) GO TO 50
        IF( ITYPE    .LT. 2        ) GO TO 40
        DO  30 J=2,NREA
         WRITE(6,*) 'DO 30 LOOP, I=',I
   30   CONTINUE
   40 ITYPE   = 1
      GO TO 90
   50 ITYPE   = 3
      GO TO 90
   60 ITYPE   = 2
   70 CONTINUE
   90 WRITE(6,*) 'ITYPE=',ITYPE
      STOP
      END
