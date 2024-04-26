      call sub1(8)
      call sub2(8)
      end

      subroutine sub1(kk)
      real*4  a(10),b(10),c(10)
      real*4 resa(10),resc(10)
      data resa/2,3,4,5,6,7,8,9,9,10/
      data resc/5*10,5*2/

      do i=1,10
         a(i) = i
         b(i) = 3
         c(i) = 2
      enddo

      do i=1,10
         a(i) = i

 11      continue
         do j=1,5
            c(j) = c(j) + 1

            if (j.gt.kk) goto 99
         enddo
 22      continue

         a(i) = a(i) + b(i) -2 
         if (i.ge.8) goto 99
      end do

 99   do i=1,10
         if (a(i).ne.resa(i).or.c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) c
 1100 continue
      end

      subroutine sub2(kk)
      real*4  a(10),b(10),c(10)
      real*4 resa(10),resc(10)
      data resa/2,3,4,5,6,7,8,9,9,10/
      data resc/5*10,5*2/
      a(9) = 9
      a(10) = 10

      b = 3
      c = 2

      do i=1,10
         a(i) = i

 11      continue
         do j=1,5
            c(j) = c(j) + 1

            if (j.gt.kk) goto 99
         enddo
 22      continue

         a(i) = a(i) + b(i) -2 
         if (i.ge.8) goto 99
      end do

 99   do i=1,10
         if (a(i).ne.resa(i).or.c(i).ne.resc(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) c
 1100 continue
      end
