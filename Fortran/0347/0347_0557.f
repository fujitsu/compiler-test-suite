      integer*4  a(10)
      integer*4 imin
      data   a/-1,-2,-55,-5,-12,-55,-3,-2,-44,-7/
      data   imin/1/
      do 11 i=1,10
        if(a(i).lt.a(imin)) then
          imin=i
        endif
   11 continue
      write(6,*) 'imin***   ',imin
      end
