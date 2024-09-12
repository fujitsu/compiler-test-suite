      program main
      integer ia(10),ib(10),ic(10)
      logical m(10)/5*.true.,5*.false./
      data   ia/1,2,3,4,5,6,7,8,9,10/
      data   ib/1,-1,2,-2,3,-3,4,-4,5,-5/
      data   ic/-1,1,-2,2,-3,3,-4,4,-5,5/
      data   isp/1/,ism/-1/

      do 10 i=1,10
        if(m(i)) ia(i) = isign(ib(i),ic(i))
  10  continue
      write(6,*) ' ia = ',ia
      do 20 i=1,10
        if(m(i)) ia(i) = isign(ib(i),isp)
  20  continue
      write(6,*) ' ia = ',ia
      do 30 i=1,10
        if(m(i)) ia(i) = isign(ib(i),ism)
  30  continue
      write(6,*) ' ia = ',ia
      do 40 i=1,10
        if(m(i)) ia(i) = isign(isp,ic(i))
  40  continue
      write(6,*) ' ia = ',ia
      do 50 i=1,10
        if(m(i)) ia(i) = isign(ism,ic(i))
  50  continue
      write(6,*) ' ia = ',ia
      do 60 i=1,10
        if(m(i)) ia(i) = isign(isp,isp)
  60  continue
      write(6,*) ' ia = ',ia
      do 70 i=1,10
        if(m(i)) ia(i) = isign(isp,ism)
  70  continue
      write(6,*) ' ia = ',ia
      do 80 i=1,10
        if(m(i)) ia(i) = isign(ism,ism)
  80  continue
      write(6,*) ' ia = ',ia
      stop
      end
