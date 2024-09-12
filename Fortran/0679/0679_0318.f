      real*4 aa(10,10)
      data aa/100*1.5/
      real*4   a(10)/1,2,3,4,5,6,7,8,9,10/
      real*4   b(10)/-1,-2,-3,-4,-5,-6,-7,-8,-9,-10/
      real*4   c(10)/5,4,3,2,1,2,3,4,5,10/
      real*4   d(10)/10*0/,e(10)/10,9,8,7,6,5,4,3,2,1/
      logical*4 l(10)/.true.,.false.,.true.,.false.,.true.,
     1                .false.,.true.,.false.,.true.,.false./
      data n/10/

      m = n/2
      q = 0.0
      do 100 i=1,n
        if (m-i) 340,330,340
340       y=  2.0
          go to 320
330       y = 1.0
320     q = q + y*aa(i,m)
100   continue
      write(6,*) ' q = ',q

      do 200 i=1,10
        s = a(i)
        if ( l(i) ) then
          s = b(i)
        else
          s = s + c(i)
        endif
        d(i) = s + e(i)
200   continue
      write(6,*) ' d = ',d

      do 300 i=1,10
        s = a(i)
        if ( l(i) ) then
          s = s + b(i)
        else
          s = s + c(i)
        endif
        d(i) = s + e(i)
300   continue
      write(6,*) ' d = ',d
      stop
      end
