      integer*4 a(10)/1,2,3,4,5,6,7,8,9,0/
      integer*4 amax,amin
      amax = 0
      amin = 0
      do 10 i=1,10
        amax = max(a(i),amax)
 10   continue
      do 20 i=1,10
        amin = min(a(i),amin)
 20   continue
      write(6,*) ' max = ',amax
      write(6,*) ' min = ',amin
      stop
      end
