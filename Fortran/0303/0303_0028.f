C
      real*4  a(10),b(10),c(10),d(10)
      real*4  resa(10),resc(10)
      data resa/4,5,6,7,8,9,10,11,12,13/
      data resc/0,2,4,6,8,10,12,14,16,18/

      do i=1,10
         a(i) = 0
         b(i) = i
         c(i) = i
         d(i) = i*2
         n = i
      enddo

      do i=1,n
         a(i) = b(i) + 3
 10      continue
 20      continue
 30      continue
 40      continue
 50      continue
 60      continue
 70      continue
 80      continue
         c(i) = d(i) - 2
 90      continue
 100      continue
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i)) goto 199
      enddo

      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) c
      write(6,*) e
 1100 continue

      call sub1

      END                      

      subroutine sub1
      real*4  a(10),b(10),c(10),d(10)
      real*4  resa(10),resc(10)
      data resa/4,5,6,7,8,9,10,11,12,13/
      data resc/0,2,4,6,8,10,12,14,16,18/

      a = 0

      do i=1,10
         b(i) = i
         c(i) = i
         d(i) = i*2
         n = i
      enddo

      do i=1,n
         a(i) = b(i) + 3
 10      continue
 20      continue
 30      continue
 40      continue
 50      continue
 60      continue
 70      continue
 80      continue
         c(i) = d(i) - 2
 90      continue
 100      continue
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ok"
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) c
 1100 continue
      end
