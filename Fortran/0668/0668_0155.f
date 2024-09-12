      integer*4 a(10)/-11,-2,-3,6,-15,26,17,-38,-9,10/
      integer*4 b(10)/-1,-1,1,1,-1,1,1,1,1,-1/
      integer*4 amax,amin,idx1,idx2
      amax = 0
      idx1 = 0
      idx2 = 0
      do 10 i=1,10,2
        if(sign(a(i),b(i)).gt.amax)then
          amax = sign(a(i),b(i))
          idx1 = i
        endif
 10   continue
      if(amax.gt.10)then
      amin = amax
      do 20 i=1,10,2
        if(sign(a(i),b(i)).lt.amin)then
          amin = sign(a(i),b(i))
          idx2 = i
        endif
 20   continue
      endif
      write(6,*) ' '
      write(6,*) ' max = ',amax
      write(6,*) ' idx = ',idx1
      write(6,*) ' '
      write(6,*) ' min = ',amin
      write(6,*) ' idx = ',idx2
      write(6,*) ' '
      stop
      end
