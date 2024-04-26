      real*4 a(10)
      integer*4 imax
      data   a/1.d0,2.d0,55.d0,5.d0,12.d0,55.d0,-3.d0,2.d0,-44.d0,7.d0/
      data   imax/1/
      do 11 i=1,10
        if(a(i).gt.a(imax)) then
          imax=i+1
        endif
   11 continue
      write(6,*) 'imax***   ',imax
      end
