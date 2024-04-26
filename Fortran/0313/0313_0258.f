      real*4 r4a(10)/10*2/,r4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*8 r8a(10)/10*2/
      do i=1,8
         r8a(i) = 3
         r4a(4) = min(r4a(4),r4b(i))
      enddo
      write(6,*) r8a(1)
      write(6,*) r4a(4)
      end
