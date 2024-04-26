      REAL*4 SUM/0/,sum2/0/
      real b(100)/100*1/

      DO 10 I=1,81
         SUM  = SUM + b(i)
 10   CONTINUE
      if (SUM .eq. 81) then
         write(6,*) "ok"
      else
         write(6,*) "ng", 81, sum
      endif
      END
