      integer*4 i4a(16),i4b(16),i4cnt
      real*4 r4a(16),r4b(16),r4cnt
      real*8 r8a(16),r8b(16),r8cnt
      integer  res1(16)/1,2,3,4,5,6,7,8,
     + 9,10,11,12,13,14,15,16/
      integer  res2(16)/-1,-2,-3,-4,-5,-6,-7,-8,
     + -9,-10,-11,-12,-13,-14,-15,-16/
      data i4b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/
      data r4b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/
      data r8b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/

      do i=1,2
         i4cnt = i
         r4cnt = i
         r8cnt = i
      enddo

      do i=1,16
         i4a(i) = sign(i4b(i),i4cnt)
      enddo
      write(1,*)
      do i=1,16
         r4a(i) = sign(r4b(i),r4cnt)
      enddo
      write(1,*)
      do i=1,16
         r8a(i) = sign(r8b(i),r8cnt)
      enddo
      write(1,*)

      do i=1,16
         if (i4a(i).ne.res1(i) .or.
     +       r4a(i).ne.res1(i) .or.
     +       r8a(i).ne.res1(i)) goto 10
      enddo
      write(6,*) " ## ok ## "
      goto 20
 10   write(6,*) " ## ng ## "
      write(6,*) i4a
      write(6,*) r4a
      write(6,*) r8a
 20   continue
      
      i4cnt = -i4cnt
      r4cnt = -r4cnt
      r8cnt = -r8cnt

      do i=1,16
         i4a(i) = sign(i4b(i),i4cnt)
      enddo
      write(1,*)
      do i=1,16
         r4a(i) = sign(r4b(i),r4cnt)
      enddo
      write(1,*)
      do i=1,16
         r8a(i) = sign(r8b(i),r8cnt)
      enddo
      write(1,*)

      do i=1,16
         if (i4a(i).ne.res2(i) .or.
     +       r4a(i).ne.res2(i) .or.
     +       r8a(i).ne.res2(i)) goto 30
      enddo
      write(6,*) " ## ok ## "
      goto 40
 30   write(6,*) " ## ng ## "
      write(6,*) i4a
      write(6,*) r4a
      write(6,*) r8a
 40   continue
      end


