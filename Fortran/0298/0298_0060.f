      integer*4  A(10),x,t1
      DATA  A/10*2/
      X=0
      DO 10 I=2,10
         T1= a(i)
         x = t1 + x +3
  10  CONTINUE

      if (X.eq.45) then
         write(6,*) " ## OK ## "
      else
         write(6,*) " ## NG ## ",X
      endif
      END
