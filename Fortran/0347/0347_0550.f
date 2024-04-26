      program main
      complex*16  a(10)
      data  a/(2.d0,0.d0),(1.d0,0.d0),(4.d0,0.d0),(3.d0,0.d0),
     *        (6.d0,0.d0),(5.d0,0.d0),(8.d0,0.d0),(7.d0,0.d0),
     *        (10.d0,0.d0),(9.d0,0.d0)/
      data  imax/1/

      do 11 i=1,10
        if(dreal(a(i)).gt.dreal(a(imax))) then
          imax=i
        endif
   11 continue
      write(6,*) 'max of c*16 ...  ',imax
      stop
      end
