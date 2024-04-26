      real*4 a(10)
      integer*4 imin,idata
      data   a/1.d0,2.d0,55.d0,5.d0,12.d0,55.d0,-3.d0,2.d0,-44.d0,7.d0/
      data   idata/1/
      do 11 i=1,10
        if(idata.ge.a(i)) then
          idata=a(i)
          imin=i
        endif
   11 continue
      write(6,*) 'min data  ***   ',idata
      write(6,*) 'min index ***   ',imin
      end
