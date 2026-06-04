      real*4 r4(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/,rr4
      real*8 r8(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/,rr8
      logical ll

      do i=1,16
         rr4 = r4(i) + 4
      enddo
      write(6,*) rr4

      do i=1,16
         rr8 = r8(i) + 8
      enddo
      write(6,*) rr8

      end
