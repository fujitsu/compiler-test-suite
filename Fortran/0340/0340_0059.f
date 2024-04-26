      integer  a(10),b(10),c(10),d(10)
      integer res3(10),res4(10),err
      data res3/7,8,9,10,11,12,13,14,15,0/
      data res4/-6,-5,-4,-3,-2,-1,0,1,2,0/

      err = 1
      do i=1,10
         a(i) = 0
         b(i) = i
         c(i) = 0
         d(i) = i
      enddo
C
      n = 1
      m = 2
      do i=1,9
         a(i) = b(n) + 6
         n = n + 1
         c(i) = d(m-1) - 7
         m = m + 1
      enddo

      do i=1,10
         if (a(i) .ne. res3(i) .or. c(i).ne.res4(i)) goto 99
      enddo

      write(6,*) "ok"
      goto 100
 99      write(6,*) " ## error  ",err," ##"
      write(6,*) a
      write(6,*) c
 100    continue

      END                      

