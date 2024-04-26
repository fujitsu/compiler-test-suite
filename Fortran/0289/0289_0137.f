      PROGRAM MAIN
      DIMENSION IDAT(10,10)
      REAL WIDAT(10,10)
      POINTER (PIDAT,IDAT)
      PIDAT=LOC(WIDAT(1,1))
      N=1
      DO 10 I=1,10
      DO 10 J=1,10
         IDAT(J,I)=2**N
         IF(MOD(J,2).EQ.1)  THEN
           N=4
         ELSE
           N=2
         ENDIF
   10 CONTINUE
      ISUM=0
      NS=0
      DO 20 J=2,10
         DO 21 I=1,J-1
            ISUM=ISUM+IDAT(J,I)
            NS=NS+1
   21   CONTINUE
   20 CONTINUE
      WRITE(6,*) ISUM
      ISUM=ISUM/NS
      DO 30 J=2,10
         DO 31 I=1,J-1
            W=IDAT(J,I)
            IDAT(J,I)=IDAT(I,J)
            IDAT(I,J)=W
   31   CONTINUE
   30 CONTINUE
      JSUM=0
      DO 40 I=2,10
         DO 41 J=1,I-1
            JSUM=JSUM+IDAT(J,I)
   41   CONTINUE
   40 CONTINUE
      WRITE(6,*) JSUM
      JSUM=JSUM/NS
      WRITE(6,*) NS
      IF((ISUM.EQ.JSUM).AND.(JSUM.EQ.10)) THEN
        WRITE(6,*) '*** OK ***'
        WRITE(6,*) JSUM
      ELSE
        WRITE(6,*) '*** NG ***'
        WRITE(6,*) JSUM
      ENDIF
      STOP
      END
