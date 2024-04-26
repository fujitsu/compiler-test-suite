      integer res(100)
      data res/1,2,3,4,5,6,7,8,9,10,10*1,10*2,10*3,10*4,
     +         1,2,3,4,5,6,7,8,9,10,40*0/

      nn = ifunc(10)

      do j=1,nn
         write(6,1) res(j)
      enddo
 1    format(3i3)
      end

      function ifunc(m)
      ifunc=m
      return
      end


