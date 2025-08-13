      integer*4 i4a(16),i4b(16),i4c(16)/8*2.0,8*-2.0/
      real*4 r4a(16),r4b(16),r4c(16)/8*2.0,8*-2.0/
      real*8 r8a(16),r8b(16),r8c(16)/8*2.0,8*-2.0/
      integer  res1(16)/8*2,8*-2/
      integer  res2(16)/1,2,3,4,5,6,7,8,
     + 9,10,11,12,13,14,15,16/
      data i4b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/
      data r4b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/
      data r8b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/

      do i=1,16
         i4a(i) = sign(abs(2),i4c(i))
      enddo
      write(35,*)
      do i=1,16
         r4a(i) = sign(abs(2.0),r4c(i))
      enddo
      write(35,*)
      do i=1,16
         r8a(i) = sign(abs(2.0_8),r8c(i))
      enddo
      write(35,*)

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

      do i=1,16
         i4a(i) = sign(i4b(i),abs(2))
      enddo
      write(35,*)
      do i=1,16
         r4a(i) = sign(r4b(i),abs(2.0))
      enddo
      write(35,*)
      do i=1,16
         r8a(i) = sign(r8b(i),abs(2.0_8))
      enddo
      write(35,*)

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


