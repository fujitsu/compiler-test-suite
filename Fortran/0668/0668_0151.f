      integer*4 a(10)/1,5,9,4,5,6,7,8,9,1/
      integer*4 idx1,idx2
      idx1 = 1
      idx2 = 1
      do 10 i=1,10
        if(a(i).gt.a(idx1))then
          idx1 = i
        endif
 10   continue
      do 20 i=1,10
        if(a(i).lt.a(idx2))then
          idx2 = i
        endif
 20   continue
      write(6,*) ' '
      write(6,*) ' idx = ',idx1
      write(6,*) ' '
      write(6,*) ' idx = ',idx2
      write(6,*) ' '
      stop
      end
