      REAL  AA(100)/100*1/
C
      DO 10 L=1,100
        IF(ABS(AA(L)).LT.2) GOTO 11
        IF(AA(L)) 12,11,10
   10 CONTINUE
C
   12 WRITE(6,*) ' ## ERROR ERROR ## '
   11 WRITE(6,*) ' ## OK OK OK OK ## '
C
      DO 30 L=1,100
        IF(ABS(AA(L)).LT.2) GOTO 20
        IF(AA(L)) 35,20,30
   30 CONTINUE
      GOTO 20
C
   35 WRITE(6,*) ' ## ERROR ERROR ## '
   20 WRITE(6,*) ' ## OK OK OK OK ## '
C
      STOP
      END
