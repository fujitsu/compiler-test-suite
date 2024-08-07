      integer*8 i8(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      real*4    r4(16)/2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17/
      real*8    r8(16)/3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18/
      complex*8  c8(16)/(4,5),(6,7),(8,9),(10,11),(12,13),(14,15),
     +                 (16,17),(18,19),(20,21),(22,23),(24,25),
     +                 (26,27),(28,29),(30,31),(32,33),(34,35)/
      complex*8  c16(16)/(6,7),(8,9),(10,11),(12,13),(14,15),
     +                 (16,17),(18,19),(20,21),(22,23),(24,25),
     +                 (26,27),(28,29),(30,31),(32,33),(34,35),
     +                 (36,37)/

      do i=1,16
         r4(i) = r8(i)
      enddo
      write(6,*) 'r4r8 ',r4
      do i=1,16
         r8(i) = r4(i)
      enddo
      write(6,*) 'r8r4 ',r8

      do i=1,16
         r4(i) = c8(i)
      enddo
      write(6,*) 'r4c8 ',r4
      do i=1,16
         c8(i) = r4(i)
      enddo
      write(6,*) 'c8r4 ',c8

      do i=1,16
         r4(i) = c16(i)
      enddo
      write(6,*) 'r4c16 ',r4
      do i=1,16
         c16(i) = r4(i)
      enddo
      write(6,*) 'c16r4 ',c16


      do i=1,16
         r8(i) = c8(i)
      enddo
      write(6,*) 'r8c8 ',r8
      do i=1,16
         c8(i) = r8(i)
      enddo
      write(6,*) 'c8r8 ',c8

      do i=1,16
         r8(i) = c16(i)
      enddo
      write(6,*) 'r8c16 ',r8
      do i=1,16
         c16(i) = r8(i)
      enddo
      write(6,*) 'c16r8 ',c16


      do i=1,16
         c8(i) = c16(i)
      enddo
      write(6,*) 'c8c16 ',r8
      do i=1,16
         c16(i) = c8(i)
      enddo
      write(6,*) 'c16c8 ',c16

      end
