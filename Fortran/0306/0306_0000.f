      real*4 r4001(20)/20*1/
      complex*16 c8001(10)
      c8001(1) = 0
      do 30 k=1,10
         if (r4001(k).gt.0) then
            c8001(1) = c8001(1) + r4001(k)
         endif
   30 continue
      write(6,*) c8001(1)
      end
