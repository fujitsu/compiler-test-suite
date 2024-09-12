      program main
      integer i4a(10)/10*0/
      integer i4b(10)/1,2,3,4,5,6,7,8,9,10/
      real*4  r4a(10)/10*0/
      real*8  r8a(10)/10*0/
      complex c8a(10)/10*(0.,0.)/
      logical l4a(10)/10*.false./
      logical l1/.true./,l2(10)
      data l2/.false.,.false.,.true.,.true.,.false.,.true.,
     +        .false.,.true.,.false.,.false./
      do 10 i=1,10
        if (l1) then
          i4a(3) = i4b(i)
        endif
   10 continue
      write(6,*) ' ### ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,*) i4a
      write(6,*)
      do 20 i=1,10
        if (l2(i)) goto 20
          r4a(2) = real(i)
   20 continue
      write(6,*) ' ## test 2 ## '
      write(6,*)
      write(6,*) r4a
      write(6,*)
      do 30 i=1,10
        if (i4b(i)-4) 31,32,33
   31     r8a(2) = real(i/4)
          goto 30
   32     r8a(5) = real(i)
          goto 30
   33     r8a(7) = sqrt(real(i))
   30 continue
      write(6,*) ' ## test 3 ## '
      write(6,*)
      write(6,*) r8a
      write(6,*)
      do 40 i=1,10
        if (.not.l2(i)) then
          c8a(4) = cmplx(i,i)
        elseif (i.gt.5) then
          c8a(10) = cmplx(i*5,i*5)
        endif
   40 continue
      write(6,*) ' ## tset 4 ## '
      write(6,*)
      write(6,*) c8a
      write(6,*)
      do 50 i=1,10
        if (i.le.3) then
          l4a(6) = i.eq.i4b(i)
        else
          l4a(2) = l1.and.l2(i)
        endif
   50 continue
      write(6,*) ' ## tset 5 ## '
      write(6,*)
      write(6,*) l4a
      write(6,*)
      stop
      end
