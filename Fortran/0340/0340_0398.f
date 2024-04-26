      call sub1(1,10)
      call sub2(1,10)
      end

      subroutine sub1(n,m)
      complex*8 c8a(10),c8b(10),res1(10)
      real*4 r4a(10)
      complex*16 c16a(10),c16b(10),res2(10)
      real*8 r8a(10)
      complex*32 c32a(10),c32b(10),res3(10)
      real*16 r16a(10)
      data res1/(5,5),(7,6),(9,7),(11,8),(13,9),
     +          (15,10),(17,11),(19,12),(21,13),(23,14)/
      data res2/(-2,1),(-2,2),(-2,3),(-2,4),(-2,5),
     +          (-2,6),(-2,7),(-2,8),(-2,9),(-2,10)/
      data res3/(-1,-3),(0,0),(3,5),(8,12),(15,21),
     +    (24,32),(35,45),(48,60),(63,77),(80,96)/

      do i=1,10
         r4a(i) = i+2
         r8a(i) = i+2
         r16a(i) = i-2
         c8a(i) = 0
         c8b(i) = cmplx(i+1,i+4)
         c16a(i) = 0
         c16b(i) = cmplx(i,i)
         c32a(i) = 0
         c32b(i) = cmplx(i,i+2)
      enddo

      do i=n,m
         c8a(i) = c8b(i) + r4a(i)

         c16a(i) = c16b(i) - r8a(i)

         c32a(i) = c32b(i) * r16a(i)
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
      complex*8 c8a(10),c8b(10),res1(10)
      real*4 r4a(10)
      complex*16 c16a(10),c16b(10),res2(10)
      real*8 r8a(10)
      complex*32 c32a(10),c32b(10),res3(10)
      real*16 r16a(10)
      data res1/(5,5),(7,6),(9,7),(11,8),(13,9),
     +          (15,10),(17,11),(19,12),(21,13),(23,14)/
      data res2/(-2,1),(-2,2),(-2,3),(-2,4),(-2,5),
     +          (-2,6),(-2,7),(-2,8),(-2,9),(-2,10)/
      data res3/(-1,-3),(0,0),(3,5),(8,12),(15,21),
     +    (24,32),(35,45),(48,60),(63,77),(80,96)/

      c8a = 0

      do i=1,10
         r4a(i) = i+2
         r8a(i) = i+2
         r16a(i) = i-2
         c8b(i) = cmplx(i+1,i+4)
         c16a(i) = 0
         c16b(i) = cmplx(i,i)
         c32a(i) = 0
         c32b(i) = cmplx(i,i+2)
      enddo

      do i=n,m
         c8a(i) = c8b(i) + r4a(i)

         c16a(i) = c16b(i) - r8a(i)

         c32a(i) = c32b(i) * r16a(i)
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

