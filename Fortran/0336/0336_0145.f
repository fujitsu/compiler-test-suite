      program main
      integer*2 i
      integer*4 j,k
      j=0
      k=0
      do i=0, 29
         if ( i .le. -32769 ) then
            k=k+1
         else
            j=j+1
         endif
      enddo
      if ( j .eq. 30 .and. k .eq. 0 ) then
         write(6,*) 'OK'
      else
         write(6,*) 'NG'
         write(6,*) 'j=',j
      endif
      end
