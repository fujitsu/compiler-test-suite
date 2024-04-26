      integer  a(10),b(10),c(10),d(10)
      integer res1(10),res2(10),res3(10),res4(10),err
      data res1/4,5,6,7,8,9,10,11,12,0/
      data res2/-2,-1,0,1,2,3,4,5,6,0/
      data res3/8,9,10,11,12,13,14,15,16,14/
      data res4/-6,-5,-4,-3,-2,-1,0,1,2,5/

      a = 0

      err = 1
      do i=1,10
         b(i) = i
         c(i) = 0
         d(i) = i
      enddo
      n = 2
      do i=1,9
         a(i) = b(n) + 2

         c(i) = d(n-1) - 3
         n = n + 1
      enddo

      do i=1,10
         if (a(i) .ne. res1(i) .or. c(i).ne.res2(i)) goto 99
      enddo
      
      err = err + 1
      n = 1
      do i=1,10
         a(i) = b(n) + 4

         n = n + 1
         c(i) = d(n-1) - 5
      enddo

      do i=1,10
         if (a(i) .ne. i+4 .or. c(i).ne. i-5) goto 99
      enddo
      
      err = err + 1

      n = 1
      m = 1
      do i=1,9
         n = n + 1
         a(i) = b(n) + 6

         m = m + 1
         c(i) = d(m-1) - 7
      enddo

      do i=1,10
         if (a(i) .ne. res3(i) .or. c(i).ne.res4(i)) goto 99
      enddo

      write(6,*) " ## ok ## "
      goto 100
 99      write(6,*) " ## error  ",err," ##"
      write(6,*) a
      write(6,*) c
 100    continue

      END                      

