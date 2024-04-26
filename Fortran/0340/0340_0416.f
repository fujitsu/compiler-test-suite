      call sub1
      call sub2
      end

      subroutine sub1
      real*4  r4a(10),r4b(10),r4
      real*8  r8a(10),r8b(10),r8

      do i=1,10
         r4a(i) = i
         r4b(i) = 0
         r4 = 0

         r8 = 0
         r8a(i) = i+2
         r8b(i) = 0
      enddo

      do i=1,10
         r4 = r4 + r4a(i)

         r8 = r8 - r8a(i)

         r4b(1) = r4b(1) + r4a(i) * i

         r8b(3) = r8b(3) + r8a(i) * 2
      end do

      if (r4.ne.55 .or. r8.ne.-75 .or.
     +    r4b(1).ne.385 .or. r8b(3).ne.150) goto 199

      write(6,*) " ## ok 1 ## "
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) r4,r8
      write(6,*) r4b(1),r8b(3)
 1100 continue
      end

      subroutine sub2
      real*4  r4a(10),r4b(10),r4
      real*8  r8a(10),r8b(10),r8

      r4b = 0

      do i=1,10
         r4a(i) = i
         r4 = 0

         r8 = 0
         r8a(i) = i+2
         r8b(i) = 0
      enddo

      do i=1,10
         r4 = r4 + r4a(i)

         r8 = r8 - r8a(i)

         r4b(1) = r4b(1) + r4a(i) * i

         r8b(3) = r8b(3) + r8a(i) * 2
      end do

      if (r4.ne.55 .or. r8.ne.-75 .or.
     +    r4b(1).ne.385 .or. r8b(3).ne.150) goto 199

      write(6,*) " ## ok 2 ## "
      goto 1100
 199    write(6,*) " ## error 2 ##"
      write(6,*) r4,r8
      write(6,*) r4b(1),r8b(3)
 1100 continue
      end
