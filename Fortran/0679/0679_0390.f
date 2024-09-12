      program main
      real a(10),b(10,2),c(10),d(10)
      data b/10*2.,10*0./,c/10*3.0/,a/10*0./,d/10*0./
      do 10 j=1,2
      do 10 i=1,10
        if(b(i,j).gt.1.0) then
          a(1) = a(1) + b(i,j)
          if(c(i).gt.2.0) then
            d(1) = d(1) + c(i)
          endif
        endif
10    continue
      write(6,*) a(1),d(1)
      stop
      end
