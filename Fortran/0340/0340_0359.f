      real*4  a(10),b(10),c(10),d(10),e(10),f(10)
      real*4  resa(10),resc(10),rese(10)
      data resa/4,5,6,7,8,9,10,11,12,13/
      data resc/0,2,4,6,8,10,12,14,16,18/
      data rese/12,30,54,84,120,162,210,264,324,390/
      do i=1,10
         a(i) = 0
         b(i) = i
         c(i) = i
         d(i) = i*2
         n = i
         e(i) = i+2
         f(i) = i*3
      enddo

      n = 1
      do i=1,10
         a(i) = b(n) + 3

         c(i) = d(n) - 2

         e(i) = f(n) * a(i)
         n = n + 1
      enddo
      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i) .or.
     +        e(i).ne.rese(i)) goto 199
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
      real*4  a(10),b(10),c(10),d(10),e(10),f(10)
      real*4  resa(10),resc(10),rese(10)
      data resa/4,5,6,7,8,9,10,11,12,13/
      data resc/0,2,4,6,8,10,12,14,16,18/
      data rese/12,30,54,84,120,162,210,264,324,390/

      a = 0

      do i=1,10
         b(i) = i
         c(i) = i
         d(i) = i*2
         n = i
         e(i) = i+2
         f(i) = i*3
      enddo

      n = 1
      do i=1,10
         a(i) = b(n) + 3

         c(i) = d(n) - 2

         e(i) = f(n) * a(i)
         n = n + 1
      enddo
      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i) .or.
     +        e(i).ne.rese(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) c
      write(6,*) e
 1100 continue
      end
