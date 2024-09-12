      integer*4  a(10),c(10),xx
      data  a/1,1,1,1,1,1,1,1,1,1/
      data c/1,1,1,1,1,1,1,1,1,1/
      xx = 9
      imax=9

      do 22 j=1,10
         if(a(j).gt.imax) then
            xx=2
            if(1.gt.c(j)) then
               xx=1
            endif
           c(3)=1
           if(3.lt.c(xx)) then
               xx=3
            endif
         endif
 22      continue
      write(6,*) xx
      end
