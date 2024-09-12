      real*8 ph(10,2),zf2(10)
      data wfmins/-1/,zf2/1,2,3,4,5,6,7,8,9,10/
      data ph/1,-1,2,-2,3,-3,4,-4,5,-5,6,-6,7,-7,8,8,9,10,11,-1/
      do 1800 m =1,2
        if(m.eq.2) wymin =wfmins
        do 1700 j =1,10
          if(ph(j,m).lt.0.0d+00 )   go to 1700
          write (6,*)   zf2(j)
1700    continue
1800  continue
      write(6,*) wymin
      stop
      end
