      integer*4 i4(16)/16*0/
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
         i4(i) = i8(i)
      enddo
      write(6,*) 'i4i8 ',i4
      do i=1,16
         i8(i) = i4(i)
      enddo
      write(6,*) 'i8i4 ',i8

      do i=1,16
         i4(i) = r4(i)
      enddo
      write(6,*) 'i4r4 ',i4
      do i=1,16
         r4(i) = i4(i)
      enddo
      write(6,*) 'r4i4 ',r4

      do i=1,16
         i4(i) = r8(i)
      enddo
      write(6,*) 'i4r8 ',i4
      do i=1,16
         r8(i) = i4(i)
      enddo
      write(6,*) 'r8i4 ',r8

      do i=1,16
         i4(i) = c8(i)
      enddo
      write(6,*) 'i4c8 ',i4
      do i=1,16
         c8(i) = i4(i)
      enddo
      write(6,*) 'c8i4 ',c8

      do i=1,16
         i4(i) = c16(i)
      enddo
      write(6,*) 'i4c16 ',i4
      do i=1,16
         c16(i) = i4(i)
      enddo
      write(6,*) 'c16i4 ',c16

      end