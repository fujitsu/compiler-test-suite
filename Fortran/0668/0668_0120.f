      program main
      integer   i4a1(10),i4b1(10),i4c1(10),i4d1(10)
      integer   i4s11,i4s12
      logical*4 l4a1(10),l4b1(10)
      data      i4a1/10*0/,i4b1/10*1/
      data      i4d1/0,1,2,0,1,2,0,1,2,0/,i4s11/0/
      data      i4c1/2,3,4,5,6,7,8,9,10,11/,i4s12/0/
      data      l4a1/.true.,.false.,.true.,.false.,.true.,
     1               .false.,.true.,.false.,.true.,.false./
      data      l4b1/10*.false./
      integer   i4a2(10),i4b2(10),i4c2(10),i4d2(10)
      logical*4 l4a2(10),l4b2(10)
      data      i4a2/10*0/,i4b2/10*10/,i4c2/10*5/
      data      i4d2/0,1,2,0,1,2,0,1,2,0/
      data      l4a2/.true.,.false.,.true.,.false.,.true.,
     1               .false.,.true.,.false.,.true.,.false./
      data      l4b2/10*.false./
      integer   i4a3(10),i4b3(10),i4d3(10)
      integer   i4s31,i4s32
      logical*4 l4a3(10),l4b3(10)
      data      i4a3/10*0/,i4b3/10*1/
      data      i4d3/0,1,2,0,1,2,0,1,2,0/,i4s31/0/
      data      i4s32/0/
      data      l4a3/.true.,.false.,.true.,.false.,.true.,
     1               .false.,.true.,.false.,.true.,.false./
      data      l4b3/10*.true./
      integer   i4a4(10),i4b4(10),i4c4(10),i4d4(10)
      integer   i4s41,i4s42
      logical*4 l4a4(10),l4b4(10)
      data      i4a4/10*0/,i4b4/10*1/,i4c4/10*1/
      data      i4d4/0,1,2,0,1,2,0,1,2,0/,i4s41/0/
      data      i4s42/0/
      data      l4a4/.true.,.false.,.true.,.false.,.true.,
     1               .false.,.true.,.false.,.true.,.false./
      data      l4b4/10*.false./
      do 10 i=1,10
        if ( l4a1(i) ) then
          i4s11 = i4s11 + i4c1(i)
          i4s1 = i4d1(i)
          i4a1(i) = i4b1(i) + i4s1
          l4b1(i) = l4a1(i) .or. l4b1(i)
        else
          i4s12 = i4s12 + i
          i4s1 = i4d1(i)
          i4a1(i) = i4b1(i) - i4s1
          l4b1(i) = l4a1(i) .and. l4b1(i)
        endif
  10  continue
      write(6,*) ' ** **  no.1 '
      write(6,*) ' i4s11  '
      write(6,110) i4s11
  110 format (i5)
      write(6,*) ' i4s12  '
      write(6,210) i4s12
  210 format (i5)
      write(6,*) ' i4a1 '
      write(6,310) i4a1
  310 format (10i5)
      write(6,*) ' l4b1 '
      write(6,410) l4b1
  410 format (10l5)
      do 20 i=1,10
        if ( l4a2(i) ) then
          i4s2 = i4b2(i)
          i4a2(i) = i4b2(i) + i4s2
          i4c2(i) = i4s2  + i4d2(i)
          l4b2(i) = l4a2(i) .or. l4b2(i)
        else
          i4s2 = i4b2(i)
          i4a2(i) =  - i4s2  + i4b2(i)
          i4c2(i) = i4s2  - i4d2(i)
          l4b2(i) = l4a2(i) .and. l4b2(i)
        endif
  20  continue
      write(6,*) ' ** **  no.2  '
      write(6,*) ' i4s2  '
      write(6,120) i4s2
  120 format (10i5)
      write(6,*) ' i4a2  '
      write(6,220) i4a2
  220 format (10i5)
      write(6,*) ' i4c2 '
      write(6,320) i4c2
  320 format (10i5)
      write(6,*) ' l4b2 '
      write(6,420) l4b2
  420 format (10l5)
      do 30 i=1,10
        if ( l4a3(i) ) then
          i4s3 = i4d3(i)
          i4s31 = i4s31 + i4s3
          i4a3(i) = i4b3(i) + i4s3
          l4a3(i) = l4a3(i) .or. l4b3(i)
        else
          i4s3 = i4d3(i)
          i4s32 = i4s32 - i4s3
          i4a3(i) = i4b3(i) - i4s3
          l4a3(i) = l4a3(i) .and. l4b3(i)
        endif
  30  continue
      write(6,*) ' ** **  no.3  '
      write(6,*) ' i4s31  '
      write(6,130) i4s31
  130 format (i5)
      write(6,*) ' i4s32  '
      write(6,230) i4s32
  230 format (i5)
      write(6,*) ' i4a3 '
      write(6,330) i4a3
  330 format (10i5)
      write(6,*) ' l4a3 '
      write(6,430) l4a3
  430 format (10l5)
      do 40 i=1,10
        if ( l4a4(i) ) then
          i4s4 = i4c4(i)
          i4s41 = i4s41 + i4s4
          i4b4(i) = i4a4(i) + i4s4
          l4b4(i) = i4s4 .gt. i4d4(i)
        else
          i4s4 = i4c4(i)
          i4s42 = i4s42 - i4s4
          i4b4(i) = i4a4(i) - i4s4
          l4b4(i) = i4s4 .le. i4d4(i)
        endif
  40  continue
      write(6,*) ' ** **  no.4  '
      write(6,*) ' i4s41  '
      write(6,140) i4s41
  140 format (i5)
      write(6,*) ' i4s42  '
      write(6,240) i4s42
  240 format (i5)
      write(6,*) ' i4b4 '
      write(6,340) i4b4
  340 format (10i5)
      write(6,*) ' l4b4 '
      write(6,440) l4b4
  440 format (10l5)
      stop
      end
