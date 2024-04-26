      integer*4 i4a(20)/20*0/,i4b(20)/20*0/
      integer*8 i8a(20)/20*0/,i8b(20)/20*0/
      real*4 r4b(20)
      real*8 r8b(20)
      do i=1,20,2
         r4b(i) = i + real(i)/10
         r4b(i+1) = -(i + real(i)/10)
         r8b(i) = i + dble(i)/10
         r8b(i+1) = -(i + dble(i)/10)
      enddo
      do i=1,19
         i4a(i) = floor(r4b(i))
      enddo
      write(6,*) i4a
      do i=1,19
         i4b(i) = floor(r8b(i))
      enddo
      write(6,*) i4b
      do i=1,19
         i8a(i) = floor(r4b(i),kind=8)
      enddo
      write(6,*) i8a
      do i=1,19
         i8b(i) = floor(r8b(i),kind=8)
      enddo
      write(6,*) i8b
      end
