      real*4  a(10,10),b(10,10),c(10,10)
      real*4  d(10,10),e(10,10),f(10,10)
      real*4 resa(10,10),resc(10,10),rese(10,10)

      do i=1,10
      do j=1,10
         a(i,j) = 0
         resa(i,j) = 0
         b(i,j) = i
         c(i,j) = i
         resc(i,j) = i
         d(i,j) = i*2
         n = i
         m = i-1
         e(i,j) = i+2
         rese(i,j) = i+2
         f(i,j) = i*3
      enddo
      enddo

      do i=1,n
      do j=1,m
         a(i,j) = b(i,j) + 3

         c(i,j) = d(i,j) - 2

         e(i,j) = f(i,j) * a(i,j)
      enddo
      enddo

      do i=1,n
         do j=1,m
            resa(i,j) = b(i,j) + 3
         enddo
         do j=1,m
            resc(i,j) = d(i,j) - 2
         enddo
         do j=1,m
             rese(i,j) = f(i,j) * resa(i,j)
         enddo
      enddo

      do i=1,10
         do j=1,10
            if (a(i,j).ne.resa(i,j) .or. c(i,j).ne.resc(i,j).or.
     +        e(i,j).ne.rese(i,j)) goto 199
         enddo
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) c
      write(6,*) e
 1100 continue

      call sub1()

      END                      

      subroutine sub1()
      real*4  a(10,10),b(10,10),c(10,10)
      real*4  d(10,10),e(10,10),f(10,10)
      real*4 resa(10,10),resc(10,10),rese(10,10)

      a = 0

      do i=1,10
      do j=1,10
         resa(i,j) = 0
         b(i,j) = i
         c(i,j) = i
         resc(i,j) = i
         d(i,j) = i*2
         n = i
         m = i-1
         e(i,j) = i+2
         rese(i,j) = i+2
         f(i,j) = i*3
      enddo
      enddo

      do i=1,n
      do j=1,m
         a(i,j) = b(i,j) + 3

         c(i,j) = d(i,j) - 2

         e(i,j) = f(i,j) * a(i,j)
      enddo
      enddo

      do i=1,n
         do j=1,m
            resa(i,j) = b(i,j) + 3
         enddo
         do j=1,m
            resc(i,j) = d(i,j) - 2
         enddo
         do j=1,m
             rese(i,j) = f(i,j) * resa(i,j)
         enddo
      enddo

      do i=1,10
         do j=1,10
            if (a(i,j).ne.resa(i,j) .or. c(i,j).ne.resc(i,j).or.
     +        e(i,j).ne.rese(i,j)) goto 199
         enddo
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) c
      write(6,*) e
 1100 continue
      return
      end
