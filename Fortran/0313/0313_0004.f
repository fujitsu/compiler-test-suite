      real*8 r8a(10)/10*2/,r8b(10)/-3,4,29,1,-13,-10,7,-8,11,2/,r8a1/1/
      real*4 r4b(10)/10*0/
      do i=1,8
         r8a1 = max(r8a1,r8b(i))
         r4b(i) = 1
      enddo
      write(6,*) r8a1
      write(6,*) r4b(1)
      end
