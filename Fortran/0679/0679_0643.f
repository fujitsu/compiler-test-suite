      program main
      integer ia(10),ib(10),ic(10)
      logical m(10)/5*.true.,5*.false./
      data   ia/1,2,3,4,5,6,7,8,9,10/
      data   ib/1,-1,2,-2,3,-3,4,-4,5,-5/
      data   ic/-1,1,-2,2,-3,3,-4,4,-5,5/
      data   isp/1/,ism/-1/

      do 10 i=1,10
        is = ic(i)
        if(m(i)) is  = isign(ib(i),is)
        ia(i) = is
  10  continue
      write(6,*) ' ia = ',ia
      do 20 i=1,10
        is = ib(i)
        if(m(i)) is = isign(is,ib(i))
        ia(i) = is
  20  continue
      write(6,*) ' ia = ',ia
      do 30 i=1,10
        is = ib(i)
        if(m(i)) is = isign(is,ism)
        ia(i) = is
  30  continue
      write(6,*) ' ia = ',ia
      do 40 i=1,10
        is = ib(i)
        if(m(i)) is = isign(is,isp)
        ia(i) = is
  40  continue
      write(6,*) ' ia = ',ia
      do 50 i=1,10
        is = ic(i)
        if(m(i)) is = isign(isp,is)
        ia(i) = is
  50  continue
      write(6,*) ' ia = ',ia
      do 60 i=1,10
        is = ic(i)
        if(m(i)) is = isign(ism,is)
        ia(i) = is
  60  continue
      write(6,*) ' ia = ',ia
      do 70 i=1,10
        is = ic(i)
        if(m(i)) is = isign(is,is)
        ia(i) = is
  70  continue
      write(6,*) ' ia = ',ia
      stop
      end
