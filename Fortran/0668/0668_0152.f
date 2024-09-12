      real*8 a(5,5)/3.6,2.4,3.1,4.5,4.1,6.2,7.1,6.4,2.3,5.5,3.8,6.8,
     $0.1,4.3,2.4,7.6,1.4,4.4,3.2,7.1,8.0,5.2,0.1,7.2,0.5/
      real*8 amax,amin,idx1,idx2
      amax = 0.0
      idx1 = 0.0
      idx2 = 0.0
      do 10 j=1,5
      do 10 i=1,5
        if(a(i,j).gt.amax)then
          amax = a(i,j)
          idx1 = i+(j-1)*5
        endif
 10   continue
      amin = amax
      do 20 j=1,5
      do 20 i=1,5
        if(a(i,j).lt.amin)then
          amin = a(i,j)
          idx2 = i+(j-1)*5
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
