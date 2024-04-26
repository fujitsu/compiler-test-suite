      real*8  a(10),b(10),c(10)
      real*8  resa1(10)
      integer err/1/
      data resa1/1,2,3,4,5,6,7,8,9,10/

      c = 0

      do i=1,10
         a(i) = i

         b(i) = i
      enddo

      do i=1,10
         if (a(i) .ne. i .or. b(i).ne.i) goto 99
      enddo

      err = err + 1

      do i=1,10

         a(i) = 2
         b(i) = 3
      enddo

      do i=1,10
         if (a(i) .ne. 2 .or. b(i).ne.3) goto 99
      enddo

      err = err + 1

      do i=1,10
         a(i) = 4
         b(i) = 5

      enddo

      do i=1,10
         if (a(i) .ne. 4 .or. b(i).ne.5) goto 99
      enddo


      write(6,*) " ## ok ## "
      goto 100
 99   write(6,*) " ## error  ",err," ##"
      write(6,*) a
      write(6,*) b
 100  continue
      END                      

