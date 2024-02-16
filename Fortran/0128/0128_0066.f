      volatile a
      integer a
      a=0
      do 10 i=1, 10
 10      a = a + i
      
      if (a.eq.55) then
         print *,'** ok **'
      else
         print *,'** ng **'
      endif
      end
