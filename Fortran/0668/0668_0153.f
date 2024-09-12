      integer*4 a(10)/5,4,3,9,5,5,12,8,9,10/
      integer*4 amax,amin,idx1,idx2
      integer*4 sa1/0/,sa2/0/
      amax = 0
      idx1 = 0
      idx2 = 0
      do 10 i=1,10,2
        sa1 = a(i)-amax
        if(sa1) 10,10,100
 100      amax = a(i)
          idx1 = i
 10   continue
      if(amax.gt.10) then
      amin = amax
      do 20 i=1,10
        sa2 = a(i)-amin
        if(sa2) 200,20,20
 200      amin = a(i)
          idx2 = i
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
