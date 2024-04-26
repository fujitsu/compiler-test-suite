      program main
      integer*2 i
      integer*4 j,k
      j=0
      k=0
      do i=0, 5
         if ( i .le. -32769 ) then
            k=k+1
         else
            j=j+1
         endif
      enddo

      write(6,*) k,j
      end
