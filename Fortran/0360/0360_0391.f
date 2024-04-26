      integer*4 i4a(16),i4b(16),i4c(16)/8*2.0,8*-2.0/
      real*4 r4a(16),r4b(16),r4c(16)/8*2.0,8*-2.0/
      real*8 r8a(16),r8b(16),r8c(16)/8*2.0,8*-2.0/

      data i4b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/
      data r4b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/
      data r8b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/

      do i=1,16
         i4a(i) = sign(abs(i4b(1)),abs(i4c(2)))
      enddo
      write(1,*)
      do i=1,16
         r4a(i) = sign(abs(r4b(3)),abs(r4c(4)))
      enddo
      write(1,*)
      do i=1,16
         r8a(i) = sign(abs(r8b(5)),abs(r8c(6)))
      enddo
      write(1,*)

      do i=1,16
         if (i4a(i).ne. 1 .or.
     +       r4a(i).ne. 3.0 .or.
     +       r8a(i).ne. 5.0) goto 10
      enddo
      write(6,*) " ## ok ## "
      goto 20
 10   write(6,*) " ## ng ## "
      write(6,*) i4a
      write(6,*) r4a
      write(6,*) r8a
 20   continue
      end


