
      real*4  a(10),b(10),c(10),d(10),e(10),f(10)
      real*4  resa(10),resf(10)
      data resa/2,4,6,8,10,12,14,16,18,20/
      data resf/1,3,5,7,9,11,13,15,17,19/

      do i=1,10
         a(i) = 0
         b(i) = i
         c(i) = i
         d(i) = i*2
         e(i) = i+2
         f(i) = 0
      enddo

      x = 1
      do i=1,10
         a(i) = b(i) + c(i)
         x = x + 1
         f(i) = d(i) - e(i) +x
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. f(i).ne.resf(i)) goto 199
      enddo

      write(6,*) "ok"
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) f
 1100 continue
      
      END                      
