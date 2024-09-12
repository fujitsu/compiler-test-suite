      real a(10)
      logical*8 l(10)/10*.true./
      do j=1,10
         do i=1,10
            if (l(j) ) then
               a(i)=1
            endif
         enddo
      enddo
      write(6,*) a
      end
