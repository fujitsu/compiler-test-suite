      integer*4 a(10)/-11,-2,-3,6,-15,26,17,-38,-9,10/
      integer*4 amax,amin,idx1,idx2
      amax = 0
      idx1 = 0
      idx2 = 0
      do 1 n=1,10
      do 10 i=1,n
        if(iabs(a(i)).gt.amax)then
          amax = iabs(a(i))
          idx1 = i
        endif
 10   continue
      amin = amax
      do 20 i=1,n
        if(iabs(a(i)).lt.amin)then
          amin = iabs(a(i))
          idx2 = i
        endif
 20   continue
 1    continue
      write(6,*) ' '
      write(6,*) ' max = ',amax
      write(6,*) ' idx = ',idx1
      write(6,*) ' '
      write(6,*) ' min = ',amin
      write(6,*) ' idx = ',idx2
      write(6,*) ' '
      stop
      end
