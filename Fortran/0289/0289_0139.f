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
      DO 20 J=1,10
      DO 20 I=1,10
         ISUM=ISUM+IDAT(J,I)
   20 CONTINUE
      IF(ISUM.EQ.998) THEN
        WRITE(6,*) '*** OK ***'
        WRITE(6,*) ISUM
      ELSE
        WRITE(6,*) '*** NG ***'
        WRITE(6,*) ISUM
      ENDIF
      STOP
      END
