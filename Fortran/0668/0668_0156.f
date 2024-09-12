      integer*4 a(10)/-11,-2,-3,6,-15,26,17,-38,-9,10/
      integer*4 amax,amin,idx1,idx2
      amax = 0
      idx1 = 0
      idx2 = 0
      call sub1(amax,idx1,a)
      amin = amax
      call sub2(amin,idx2,a)
      stop
      end
      subroutine sub1(amax,idx1,a)
      integer*4 amax,idx1,a(10)
      do 10 i=1,10
        if(mod(a(i),100).gt.amax)then
          amax = mod(a(i),100)
          idx1 = i
        endif
 10   continue
      write(6,*) ' '
      write(6,*) ' max = ',amax
      write(6,*) ' idx = ',idx1
      return
      end
      subroutine sub2(amin,idx2,a)
      integer*4 amin,idx2,a(10)
      do 20 i=1,10
        if(mod(a(i),100).lt.amin)then
          amin = mod(a(i),100)
          idx2 = i
        endif
 20   continue
      write(6,*) ' '
      write(6,*) ' min = ',amin
      write(6,*) ' idx = ',idx2
      write(6,*) ' '
      return
      end
