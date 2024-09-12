      integer*4 a(5,5)/1,2,3,4,5,6,7,8,9,0,-1,-5,-1,1,58,10,4,56,10,37,
     $-21,5,50,147,2/
      integer*4 amax,amin
      real*4 b(5,5)/1.0,-2.4,-2.3,-1.4,5.5,-3.6,6.7,2.8,-1.9,3.0,11.2,
     $3.5,-8.4,1.4,5.4,-6.5,2.6,-7.9,-9.8,1.9,3.8,-12.5,5.68,10.1,-1.1/
      real*4 bmax,bmin
      amax = 0
      bmax = 0.0
      do 10 j=1,5
      do 10 i=1,5
        if(i.eq.1.or.i.eq.3.or.i.eq.5) then
          amax = max(a(i,j),amax)
        endif
 10   continue
      amin = amax
      do 20 j=1,5
      do 20 i=1,5
        if(j.eq.1.or.j.eq.3.or.j.eq.5) then
          amin = min(a(i,j),amin)
        endif
 20   continue
      do 30 j=1,5
      do 30 i=1,5
        if(i.eq.2.or.i.eq.4.or.i.eq.5) then
          bmax = max(b(i,j),bmax)
        endif
 30   continue
      bmin = bmax
      do 40 j=1,5
      do 40 i=1,5
        if(i.eq.2.or.i.eq.4.or.i.eq.5) then
          bmin = min(b(i,j),bmin)
        endif
 40   continue
      write(6,*) ' ## integer*4 ## '
      write(6,*) ' max = ',amax
      write(6,*) ' min = ',amin
      write(6,*) ' ## real*4 ## '
      write(6,*) ' max = ',bmax
      write(6,*) ' min = ',bmin
      stop
      end
