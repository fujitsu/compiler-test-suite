      call sub1(1,10)
      call sub2(1,10)
      end

      subroutine sub1(n,m)
      real*4  a(10),b(10),c(10),d(10),e(10)
      real*4 resa(10)
      data resa/2,3,4,5,6,7,8,9,10,11/

      do i=1,10
         b(i) = 3
         c(i) = 2
         d(i) = 1
         e(i) = 1
      enddo

      do i=n,m
         a(i) = i

 11      continue
         b = b + 1
         do j=n,m
            d(j) = d(j) + 1
         enddo

         a(i) = a(i) + 1
         c = c  + 2
         do j=n,m
            e(j) = e(j) + 2
         enddo
      end do

      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.22.0 .or.
     +        b(i).ne.13.0 .or. d(i).ne.11.0.or.
     +        e(i).ne.21.0) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      write(6,*) e
 1100 continue
      end

      subroutine sub2(n,m)
      real*4  a(10),b(10),c(10),d(10),e(10)
      real*4 resa(10)
      data resa/2,3,4,5,6,7,8,9,10,11/

      b = 3
      c = 2
      d = 1
      e = 1

      do i=n,m
         a(i) = i

 99      continue
         b = b + 1
         do j=n,m
            d(j) = d(j) + 1
         enddo

         a(i) = a(i) + 1

         c = c  + 2
         do j=n,m
            e(j) = e(j) + 2
         enddo
      end do

      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.22.0 .or.
     +        b(i).ne.13.0 .or. d(i).ne.11.0.or.
     +        e(i).ne.21.0) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      write(6,*) e
 1100 continue
      end

