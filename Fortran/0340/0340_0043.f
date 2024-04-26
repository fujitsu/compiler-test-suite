      real*4  a(10),b(10),c(10),d(10),e(10),f(10)
      real*4  resa(10),resc(10),rese(10)
      data resa/10,18,24,28,30,30,28,24,18,10/
      data resc/1,2,3,4,5,6,7,8,9,10/
      data rese/168,544,977,1350,1582,1628,1479,1162,740,312/

      do i=1,10
         a(i) = 0
         b(i) = i
         c(i) = i
         d(i) = i*2
         e(i) = i+2
         f(i) = i*3
      enddo

      do j=1,10
      do i=1,j
         a(i) = b(i) + a(i)
         c(i) = d(i) - c(i)
         e(i) = f(i) * a(i) + e(i)
      enddo
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
      data resa/10,18,24,28,30,30,28,24,18,10/
      data resc/1,2,3,4,5,6,7,8,9,10/
      data rese/168,544,977,1350,1582,1628,1479,1162,740,312/

      a = 0

      do i=1,10
         b(i) = i
         c(i) = i
         d(i) = i*2
         e(i) = i+2
         f(i) = i*3
      enddo

      do j=1,10
      do i=1,j
         a(i) = b(i) + a(i)
         c(i) = d(i) - c(i)
         e(i) = f(i) * a(i) + e(i)
      enddo
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
      return
      end
