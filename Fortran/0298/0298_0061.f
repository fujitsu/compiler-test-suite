      integer*4  B(10)/10*2/,S1,T1,S
      S=0
      DO 10 I=1,10
         T1 = B(I)
         S1 = S + T1
         S  = S1
 10   CONTINUE
      if (S.eq.20) then
         write(6,*) " ## OK ## "
      else
         write(6,*) " ## NG ## ",S
      endif
      END
