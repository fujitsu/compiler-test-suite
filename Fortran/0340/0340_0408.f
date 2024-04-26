      call sub1
      call sub2
      end

      subroutine sub1
      real*4  a(10),b(10),c(10)
      real*4 resa(10),resb(10),resc(10)
      data resa/2,3,4,5,6,7,8,9,10,11/
      data resb/10*13/
      data resc/10*22/

      do i=1,10
         b(i) = 3
         c(i) = 2
      enddo

      do i=1,10
         a(i) = i

         b = b + 1

         a(i) = a(i) + 1

         c = c  + 2
      end do

      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i) .or.
     +        b(i).ne.resb(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
 1100 continue
      end

      subroutine sub2
      real*4  a(10),b(10),c(10)
      real*4 resa(10),resb(10),resc(10)
      data resa/2,3,4,5,6,7,8,9,10,11/
      data resb/10*13/
      data resc/10*22/

      b = 3
      c = 2

      do i=1,10
         a(i) = i

         b = b + 1

         a(i) = a(i) + 1

         c = c  + 2
      end do

      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i) .or.
     +        b(i).ne.resb(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
 1100 continue
      end
