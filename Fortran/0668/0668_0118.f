      integer   i4a1(10),i4b1(10),i4c1(10),i4d1(10),i4l1(10)
      logical*4 l4a1(10)
      data      i4a1/10*10/,i4b1/10*100/,i4c1/10*5/
      data      i4d1/50,1,22,0,31,12,0,51,20,0/
      data      i4l1/1,2,3,4,5,6,7,8,9,10/
      data      l4a1/.true.,.false.,.true.,.false.,.true.,
     1               .false.,.true.,.false.,.true.,.false./
      integer   i4b2(10),i4c2(10),i4d2(10),i4l2(10),i4s21,i4s22
      logical*4 l4a2(10)
      data      i4b2/10*10/,i4c2/10*10/,i4d2/10,10,20,0,10,20,0,1,2,0/
      data      i4s21/210/,i4s22/220/
      data      i4l2/1,2,3,4,5,6,7,8,9,10/
      data      l4a2/.true.,.false.,.true.,.false.,.true.,
     1               .false.,.true.,.false.,.true.,.false./
      integer   i4a3(10),i4b3(10),i4d3(10),i4l3(10),i4s31,i4s32
      logical*4 l4a3(10)
      data      i4a3/10*0/,i4b3/10*1/,i4d3/0,1,2,0,1,2,0,1,2,0/
      data      i4s31/0/,i4s32/0/
      data      i4l3/1,2,3,4,5,6,7,8,9,10/
      data      l4a3/.true.,.false.,.true.,.false.,.true.,
     1               .false.,.true.,.false.,.true.,.false./
      integer   i4a4(10),i4c4(10),i4l4(10),i4s41,i4s42
      logical*4 l4a4(10)
      data      i4a4/10*10/,i4c4/10*20/,i4s41/41/,i4s42/42/
      data      i4l4/1,2,3,4,5,6,7,8,9,10/
      data      l4a4/.true.,.false.,.true.,.false.,.true.,
     1               .false.,.true.,.false.,.true.,.false./
      do 10 i=1,10
        if ( l4a1(i) ) then
          i4s1 = i4b1(i) + i4l1(i)
          i4c1(i4l1(i)) = i4s1 * 20
          i4d1(i) = i4s1 * i4a1(i)
        else
          i4s1 = i4b1(i) * i4l1(i)
          i4c1(i4l1(i)) = i4s1 - 10
          i4d1(i) = i4s1 + i4a1(i)
        endif
  10  continue
      write(6,*) ' ** **  no.1  '
      write(6,*) ' i4c1 '
      write(6,110) i4c1
  110 format(10i5)
      write(6,*) ' i4d1 '
      write(6,120) i4d1
  120 format(10i5)
      do 20 i=1,10
        if ( l4a2(i) ) then
          i4s2 = i4b2(i) + 1.
          i4c2(i4l2(i)) = i4s2 * i4d2(i)
          i4s21 = i4s21 + i4s2
        else
          i4s2 = i4b2(i) + i
          i4c2(i4l2(i)) = i4s2 * i4d2(i)
          i4s22 = i4s22 - i4s2
        endif
  20  continue
      write(6,*) ' ** **  no.2  '
      write(6,*) ' i4c2 '
      write(6,210) i4c2
  210 format(10i5)
      write(6,*) ' i4s21'
      write(6,220) i4s21
  220 format(i5)
      write(6,*) ' i4s22'
      write(6,230) i4s22
  230 format(i5)
      do 30 i=1,10
        if ( l4a3(i) ) then
          i4s3 = i4d3(i) + i4b3(i)
          i4s31 = i4s31 + i4s3
          i4a3(i4l3(i)) = i4s3 + i
        else
          i4s3 = i4d3(i) * i4b3(i)
          i4s32 = i4s32 - i4s3
          i4a3(i4l3(i)) = i4s3 * i
        endif
  30  continue
      write(6,*) ' ** **  no.3  '
      write(6,*) ' i4a3 '
      write(6,310) i4a3
  310 format(10i5)
      write(6,*) ' i4s31'
      write(6,320) i4s31
  320 format(i5)
      write(6,*) ' i4s32'
      write(6,330) i4s32
  330 format(i5)
      do 40 i=1,10
        if ( l4a4(i) ) then
          i4s4 = i4a4(i4l4(i)) + i
          i4s41 = i4s41 - i4s4
          i4c4(i4l4(i)) = i4s4 + i4a4(i4l4(i))
        else
          i4s4 = i4a4(i4l4(i)) * i
          i4s42 = i4s42 + i4s4
          i4c4(i4l4(i)) = i4s4 - i4a4(i4l4(i))
        endif
  40  continue
      write(6,*) ' ** **  no.4  '
      write(6,*) ' i4c4 '
      write(6,410) i4c4
  410 format(10i5)
      write(6,*) ' i4s41'
      write(6,420) i4s41
  420 format(i5)
      write(6,*) ' i4s42'
      write(6,430) i4s42
  430 format(i5)
      stop
      end
