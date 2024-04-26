      real*4  a(10),b(10),c(10),e(10)
      real*4  resc(10),rese(10)
      data resc/2,3,4,5,6,7,8,9,10,11/
      data rese/8,10,12,14,16,18,20,22,24,26/

      do i=1,10
         a(i) = 2
         b(i) = i
         c(i) = i
         e(i) = i+2
      enddo

      do i=1,10
         n = b(i) + 3

         c(i) = n - 2

         e(i) = n * a(i)
      enddo
      do i=1,10
         if (c(i).ne.resc(i).or.e(i).ne.rese(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) c
      write(6,*) e
 1100 continue

      call sub1()

      END                      

      subroutine sub1()
      real*4  a(10),b(10),c(10),e(10)
      real*4  resc(10),rese(10)
      data resc/2,3,4,5,6,7,8,9,10,11/
      data rese/8,10,12,14,16,18,20,22,24,26/

      a = 2

      do i=1,10
         b(i) = i
         c(i) = i
         e(i) = i+2
      enddo

      do i=1,10
         n = b(i) + 3

         c(i) = n - 2

         e(i) = n * a(i)
      enddo
      do i=1,10
         if (c(i).ne.resc(i).or.e(i).ne.rese(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) c
      write(6,*) e
 1100 continue
      return
      end
