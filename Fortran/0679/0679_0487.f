      integer*4 a1(10),b1(10),c1(10),d1(10),l1(10),s11,s12
      logical*4 la1(10),lb1(10)
      data a1/10*0/,b1/10*1/,c1/10*1/,d1/0,1,2,0,1,2,0,1,2,0/,s11/0/
      data la1/.true.,.false.,.true.,.false.,.true.,
     1        .false.,.true.,.false.,.true.,.false./,lb1/10*.false./
      data l1/1,2,3,4,5,6,7,8,9,10/ ,s12/0/

      integer*4 a2(10),b2(10),c2(10),d2(10),l2(10),s21,s22
      logical*4 la2(10)
      data a2/10*0/,b2/10*1/,c2/10*1/,d2/0,1,2,0,1,2,0,1,2,0/,s21/0/
      data la2/.true.,.false.,.true.,.false.,.true.,
     1        .false.,.true.,.false.,.true.,.false./
      data l2/1,2,3,4,5,6,7,8,9,10/ ,s22/0/

      integer*4 a3(10),b3(10),c3(10),d3(10),l3(10),s31,s32
      logical*4 la3(10)
      data a3/10*0/,b3/10*1/,c3/10*1/,d3/0,1,2,0,1,2,0,1,2,0/,s31/0/
      data la3/.true.,.false.,.true.,.false.,.true.,
     1        .false.,.true.,.false.,.true.,.false./
      data l3/1,2,3,4,5,6,7,8,9,10/ ,s32/0/

      integer*4 a4(10),b4(10),c4(10),d4(10),l4(10),s41,s42
      logical*4 la4(10),lb4(10)
      data a4/10*0/,b4/10*1/,c4/10*1/,d4/0,1,2,0,1,2,0,1,2,0/,s41/0/
      data la4/.true.,.false.,.true.,.false.,.true.,
     1        .false.,.true.,.false.,.true.,.false./,lb4/10*.false./
      data l4/1,2,3,4,5,6,7,8,9,10/ ,s42/0/

      do 10 i=1,10
        if ( la1(i) ) then
          s11 = s11 + l1(i)
          is1 = d1(i)
          a1(i) = b1(i) + is1
          lb1(i) = c1(i) .gt. is1
        else
          s12 = s12 + i
          is1 = d1(i)
          a1(i) = b1(i) - is1
          lb1(i) = c1(i) .le. is1
        endif
  10  continue
      write(6,*) ' s11 = ',s11
      write(6,*) ' s12 = ',s12
      write(6,*) ' a1  = ',a1
      write(6,*) ' lb1 = ',lb1

      do 20 i=1,10
        if ( la2(i) ) then
          is2 = b2(i)
          s21 = s21 + is2
          a2(i) = b2(i) + is2
          c2(l2(i)) = is2  + d2(i)
        else
          is2 = b2(i)
          s22 = s22 - is2
          a2(i) =  - is2  + b2(i)
          c2(l2(i)) = is2  - d2(i)
        endif
  20  continue
      write(6,*) ' s21 = ',s21
      write(6,*) ' s22 = ',s22
      write(6,*) ' a2  = ',a2
      write(6,*) ' c2  = ',c2

      do 30 i=1,10
        if ( la3(i) ) then
          is3 = d3(i)
          s31 = s31 + is3
          a3(l3(i)) = b3(i) + is3
          c3(i) = is3 + b3(i)
        else
          is3 = d3(i)
          s32 = s32 - is3
          a3(l3(i)) = b3(i) - is3
          c3(i) = -is3 + b3(i)
        endif
  30  continue
      write(6,*) ' s31 = ',s31
      write(6,*) ' s32 = ',s32
      write(6,*) ' a3  = ',a3
      write(6,*) ' c3  = ',c3

      do 40 i=1,10
        if ( la4(i) ) then
          is4 = c4(i)
          s41 = s41 + is4
          b4(l4(i)) = a4(i) + is4
          lb4(i)   = is4 .gt. d4(i)
        else
          is4 = c4(i)
          s42 = s42 - is4
          b4(l4(i)) = a4(i) - is4
          lb4(i)   = is4 .le. d4(i)
        endif
  40  continue
      write(6,*) ' s41 = ',s41
      write(6,*) ' s42 = ',s42
      write(6,*) ' b4  = ',b4
      write(6,*) ' lb4 = ',lb4
      stop
      end
