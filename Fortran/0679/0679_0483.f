      integer*4 a1(10),b1(10),c1(10),d1(10),l1(10),s1
      logical*4 la1(10),lb1(10)
      data a1/10*0/,b1/10*1/,c1/10*1/,d1/0,1,2,0,1,2,0,1,2,0/,s1/0/
      data la1/.true.,.false.,.true.,.false.,.true.,
     1        .false.,.true.,.false.,.true.,.false./,lb1/10*.false./
      data l1/1,2,3,4,5,6,7,8,9,10/

      integer*4 a2(10),b2(10),c2(10),d2(10),l2(10),s2
      logical*4 la2(10)
      data a2/10*0/,b2/10*1/,c2/10*1/,d2/0,1,2,0,1,2,0,1,2,0/,s2/0/
      data la2/.true.,.false.,.true.,.false.,.true.,
     1        .false.,.true.,.false.,.true.,.false./
      data l2/1,2,3,4,5,6,7,8,9,10/

      integer*4 a3(10),b3(10),c3(10),d3(10),l3(10),s3
      logical*4 la3(10)
      data a3/10*0/,b3/10*1/,c3/10*1/,d3/0,1,2,0,1,2,0,1,2,0/,s3/0/
      data la3/.true.,.false.,.true.,.false.,.true.,
     1        .false.,.true.,.false.,.true.,.false./
      data l3/1,2,3,4,5,6,7,8,9,10/

      integer*4 a4(10),b4(10),c4(10),d4(10),l4(10),s4
      logical*4 la4(10),lb4(10)
      data a4/10*0/,b4/10*1/,c4/10*1/,d4/0,1,2,0,1,2,0,1,2,0/,s4/0/
      data la4/.true.,.false.,.true.,.false.,.true.,
     1        .false.,.true.,.false.,.true.,.false./,lb4/10*.false./
      data l4/1,2,3,4,5,6,7,8,9,10/

      do 10 i=1,10
        if ( la1(i) ) then
          s1 = s1 + i
          a1(i) = b1(i) + l1(i)
          lb1(i) = c1(i) .gt. d1(i)
        endif
  10  continue
      write(6,*) ' s1 = ',s1
      write(6,*) ' a1 = ',a1
      write(6,*) ' lb1 = ' ,lb1

      do 20 i=1,10
        if ( la2(i) ) then
          s2 = s2 + i
          a2(i) = b2(i) + 1.
          c2(l2(i)) = a2(i) + d2(i)
        endif
  20  continue
      write(6,*) ' s2 = ',s2
      write(6,*) ' a2 = ',a2
      write(6,*) ' c2 = ',c2

      do 30 i=1,10
        if ( la3(i) ) then
          s3 = s3 + i
          a3(l3(i)) = b3(i) + i
          c3(i) = d3(i) + b3(i)
        endif
  30  continue
      write(6,*) ' s3 = ',s3
      write(6,*) ' a3 = ',a3
      write(6,*) ' c3 = ',c3

      do 40 i=1,10
        if ( la4(i) ) then
          s4 = s4 + i
          b4(l4(i)) = a4(i) + i
          lb4(i)   = c4(i) .gt. d4(i)
        endif
  40  continue
      write(6,*) ' s4 = ',s4
      write(6,*) ' b4 = ',b4
      write(6,*) 'lb4 = ',lb4
      stop
      end
