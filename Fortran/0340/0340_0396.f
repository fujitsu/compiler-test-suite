      call sub1(1,10)
      call sub2(1,10)
      end

      subroutine sub1(n,m)
      complex*8 c8a(10),c8b(10),c8c(10),res1(10)
      complex*16 c16a(10),c16b(10),c16c(10),res2(10)
      complex*32 c32a(10),c32b(10),c32c(10),res3(10)
      data res1/(5,9),(7,11),(9,13),(11,15),(13,17),
     +          (15,19),(17,21),(19,23),(21,25),(23,27)/
      data res2/(-2,-4),(-2,-3),(-2,-2),(-2,-1),(-2,0),
     +          (-2,1),(-2,2),(-2,3),(-2,4),(-2,5)/
      data res3/(-4,-2),(-8,4),(-12,14),(-16,28),(-20,46),
     +    (-24,68),(-28,94),(-32,124),(-36,158),(-40,196)/

      do i=1,10
         c8a(i) = 0
         c8b(i) = cmplx(i+1,i+4)
         c8c(i) = cmplx(i+2,i+3)
         c16a(i) = 0
         c16b(i) = cmplx(i,i)
         c16c(i) = cmplx(i+2,5)
         c32a(i) = 0
         c32b(i) = cmplx(i,i+2)
         c32c(i) = cmplx(i-2,i)
      enddo

      do i=n,m
         c8a(i) = c8b(i) + c8c(i)

         c16a(i) = c16b(i) - c16c(i)

         c32a(i) = c32b(i) * c32c(i)
      enddo

      do i=1,10
         if (c8a(i).ne.res1(i) .or. c16a(i).ne.res2(i) .or.
     +        c32a(i).ne.res3(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) c8a
      write(6,*) c16a
      write(6,*)
      write(6,*) c32a
 1100 continue

      end

      subroutine sub2(n,m)
      complex*8 c8a(10),c8b(10),c8c(10),res1(10)
      complex*16 c16a(10),c16b(10),c16c(10),res2(10)
      complex*32 c32a(10),c32b(10),c32c(10),res3(10)
      data res1/(5,9),(7,11),(9,13),(11,15),(13,17),
     +          (15,19),(17,21),(19,23),(21,25),(23,27)/
      data res2/(-2,-4),(-2,-3),(-2,-2),(-2,-1),(-2,0),
     +          (-2,1),(-2,2),(-2,3),(-2,4),(-2,5)/
      data res3/(-4,-2),(-8,4),(-12,14),(-16,28),(-20,46),
     +    (-24,68),(-28,94),(-32,124),(-36,158),(-40,196)/

      c8a = 0

      do i=1,10
         c8b(i) = cmplx(i+1,i+4)
         c8c(i) = cmplx(i+2,i+3)
         c16a(i) = 0
         c16b(i) = cmplx(i,i)
         c16c(i) = cmplx(i+2,5)
         c32a(i) = 0
         c32b(i) = cmplx(i,i+2)
         c32c(i) = cmplx(i-2,i)
      enddo

      do i=n,m
         c8a(i) = c8b(i) + c8c(i)

         c16a(i) = c16b(i) - c16c(i)

         c32a(i) = c32b(i) * c32c(i)
      enddo

      do i=1,10
         if (c8a(i).ne.res1(i) .or. c16a(i).ne.res2(i) .or.
     +        c32a(i).ne.res3(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) c8a
      write(6,*) c16a
      write(6,*)
      write(6,*) c32a
 1100 continue
      end

