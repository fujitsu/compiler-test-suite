      program main
      integer a(10)
      data a/10*0/
      a = a + 1
      do 10 i=1,10
         if(a(i).ne.1) then
            print *,'###       NG       ###'
            go to 20
         endif
   10 continue
      print *,'###       OK       ###'
   20 continue
      stop
      end
