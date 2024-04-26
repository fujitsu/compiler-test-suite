      program main
      integer*2  int2(10)
      integer*4  int4(10),imax
      real*4     rea4(10),r1,r2
      real*8     rea8(10),r3,r4
      real*8     rea16(10),r5,r6
      complex*8  com8(10)
      complex*16  com16(10)
      complex*16  com32(10)

      data  int2/2,1,4,3,6,5,8,7,10,9/
      data  int4/2,1,4,3,6,5,8,7,10,9/
      data  rea4/2.d0,1.d0,4.d0,3.d0,6.d0,5.d0,8.d0,7.d0,10.d0,9.d0/
      data  rea8/2.d0,1.d0,4.d0,3.d0,6.d0,5.d0,8.d0,7.d0,10.d0,9.d0/
      data  rea16/2.d0,1.d0,4.d0,3.d0,6.d0,5.d0,8.d0,7.d0,10.d0,9.d0/
      data  com8/(2.d0,0.d0),(1.d0,0.d0),(4.d0,0.d0),(3.d0,0.d0),
     *           (6.d0,0.d0),(5.d0,0.d0),(8.d0,0.d0),(7.d0,0.d0),
     *           (10.d0,0.d0),(9.d0,0.d0)/
      data  com16/(2.d0,0.d0),(1.d0,0.d0),(4.d0,0.d0),(3.d0,0.d0),
     *            (6.d0,0.d0),(5.d0,0.d0),(8.d0,0.d0),(7.d0,0.d0),
     *            (10.d0,0.d0),(9.d0,0.d0)/
      data  com32/(2.d0,0.d0),(1.d0,0.d0),(4.d0,0.d0),(3.d0,0.d0),
     *            (6.d0,0.d0),(5.d0,0.d0),(8.d0,0.d0),(7.d0,0.d0),
     *            (10.d0,0.d0),(9.d0,0.d0)/
      data  imax/1/

      do 11 i=1,10
        if(int2(i).gt.int2(imax)) then
          imax=i
        endif
   11 continue
      write(6,*) 'max of i*2 ...  ',imax

      imax=1
      do 22 i=1,10
        if(int4(i).gt.int4(imax)) then
          imax=i
        endif
   22 continue
      write(6,*) 'max of i*4 ...  ',imax

      imax=1
      do 33 i=1,10
        if(rea4(i).gt.rea4(imax)) then
          imax=i
        endif
   33 continue
      write(6,*) 'max of r*4 ...  ',imax

      imax=1
      do 44 i=1,10
        if(rea8(i).gt.rea8(imax)) then
          imax=i
        endif
   44 continue
      write(6,*) 'max of r*8 ...  ',imax

      imax=1
      do 55 i=1,10
        if(rea16(i).gt.rea16(imax)) then
          imax=i
        endif
   55 continue
      write(6,*) 'max of r*16 ...  ',imax

      imax=1
      do 66 i=1,10
        r1=real(com8(i))
        r2=real(com8(imax))
        if(r1.gt.r2) then
          imax=i
        endif
   66 continue
      write(6,*) 'max of c*8 ...  ',imax

      imax=1
      do 77 i=1,10
        r3=dreal(com16(i))
        r4=dreal(com16(imax))
        if(r3.gt.r4) then
          imax=i
        endif
   77 continue
      write(6,*) 'max of c*16 ...  ',imax

      imax=1
      do 88 i=1,10
        r5=dreal(com32(i))
        r6=dreal(com32(imax))
        if(r5.gt.r6) then
          imax=i
        endif
   88 continue
      write(6,*) 'max of c*32 ...  ',imax
      stop
      end
