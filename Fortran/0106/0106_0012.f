      real*8 x(20)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      real*8 s/0/
      do i=2,11
         s = s + x(15-i)
      enddo
      if (s .eq. 85) then
         write(6,*) "ok"
      else
         write(6,*) s
      endif
      end
