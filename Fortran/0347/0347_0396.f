      program main
      real  d1(10),d2(10),d3(10)
      data  d1/ 1,-2,3,-4,5,-6,7,-8,9,-10/
      data  d2/1,2,3,4,5,6,7,8,9,10/
      data  d3/-1,-4,-9,-16,-25,-36,-49,-64,-81,-100/
      logical  ls,l1(10),l2(10),l3(10)
      data  ls,l1,l2,l3/21*.false.,10*.true./
      j=1
      do 10 i=1,10
        ls = d1(i).gt.0
        if (d1(i).gt.0) then
          l2(j)=ls.and.(d1(i).gt.1)
          ls=d1(i).gt.1
          j=j+1
        endif
        l1(i)=ls
  10  continue
      write(6,*) l1
      write(6,*) l2,j
      stop
      end
