      integer*8 i4a(16)/16*0/,i4b(16),i4c(16)/16*5/
      data i4b/1,3,5,7,9,2,4,6,8,10,3*3,3*5/
      do i=1,16
         i4a(i) = i4b(i) .ge. i4c(i)
      enddo
      write(6,*) i4a
      end
