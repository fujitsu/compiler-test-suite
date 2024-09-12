      real*4 a(10)/3.6,2.4,3.1,4.5,4.1,6.2,7.1,6.4,2.3,5.5/
      real*4 amax,amin,idx1,idx2
      amax = 0.0
      idx1 = 0.0
      idx2 = 0.0
      do 10 i=1,10
        if(a(i).gt.amax)then
          amax = a(i)
          idx1 = i
        endif
 10   continue
      amin = amax
      do 20 i=1,10
        if(a(i).lt.amin)then
          amin = a(i)
          idx2 = i
        endif
 20   continue
      write(6,*) ' '
      write(6,*) ' max = ',amax
      write(6,*) ' idx = ',idx1
      write(6,*) ' '
      write(6,*) ' min = ',amin
      write(6,*) ' idx = ',idx2
      write(6,*) ' '
      stop
      end
