      real*8  a(10),b(10),c(10)
      real*8  resa(10)
      real*8 r8func1,r8func2
      data resa/3,6,9,12,15,18,21,24,27,30/

      do i=1,10
         a(i) = 0
         c(i) = 0
         b(i) = i
      enddo
      
      do i=1,10
         a(i) = b(i)+ r8func1(i)
      enddo

      do i=1,10
         c(i) = b(i)+ r8func2(i)
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.c(i).ne.resa(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) c
 1100 continue

      call sub1()
      END

      subroutine sub1()
      real*8  a(10),b(10),c(10)
      real*8  resa(10)
      real*8 r8func1,r8func2
      data resa/3,6,9,12,15,18,21,24,27,30/

      a = 0

      do i=1,10
         c(i) = 0
         b(i) = i
      enddo
      
      do i=1,10
         a(i) = b(i)+ r8func1(i)
      enddo

      do i=1,10
         c(i) = b(i)+ r8func2(i)
      enddo

      do i=1,10
         if (a(i).ne.resa(i).or.c(i).ne.resa(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) c
 1100 continue
      end

      real*8 function r8func1(nn)

      r8func1 = nn*2
      return
      end

      real*8 function r8func2(nn)
      r8func2 = nn*2

      return
      end

