      real*4  a(10),b(10),c(10),d(10),e(10),f(10)
      real*4  resa(10),resc(10),rese(10)
      data resa/4,5,6,7,8,9,10,11,12,13/
      data resc/0,2,4,6,8,10,12,14,16,18/
      data rese/6,12,18,24,30,36,42,48,54,60/

      do i=1,10
         a(i) = 2
         b(i) = i
         c(i) = i
         d(i) = i*2
         n = i
         e(i) = i+2
         f(i) = i*3
      enddo

      n = 1
      do i=1,10
         goto 20
 40      a(i) = b(i) + 3
         goto 60

 30      continue
         c(i) = d(i) - 2
         goto 40

 20      continue
         e(i) = f(i) * a(i)
         goto 30
 60      continue
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
      data rese/6,12,18,24,30,36,42,48,54,60/

      a = 2

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
         goto 20
 40      a(i) = b(i) + 3
         goto 60

 30      continue
         c(i) = d(i) - 2
         goto 40

 20      continue
         e(i) = f(i) * a(i)
         goto 30
 60      continue
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
