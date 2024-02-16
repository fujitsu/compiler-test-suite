      DOUBLE PRECISION VEMP(10)/10*1/
      DOUBLE PRECISION TAUH(10)/10*1/
      CALL SUB(TAUH,VEMP)
      write(6,9) VEMP
 9    format(5F10.5)
      END

      SUBROUTINE SUB(TAUH,VEMP)
      DOUBLE PRECISION VEMP(10)
      DOUBLE PRECISION  TAUH(10)
      integer list(1)/1/

      DO 40 J1=1,10
         DO 10 NA = 1, 1
            VE1 = 1
 10      CONTINUE
         DO 12 NA = 1,list(1)
            VE1 = VE1 + COS(TAUH(NA))
 12      CONTINUE
         VEMP(J1)=VE1
 20   CONTINUE
 30   CONTINUE
 40   CONTINUE
      END
