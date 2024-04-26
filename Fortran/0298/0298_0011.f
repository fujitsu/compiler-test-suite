      integer a(10)/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         if (i-5) 11,12,13
 11      write(6,*) a(i)
 12      read(5,20) a(i)
 13      write(6,*) a(i)
      enddo

 20   format(3i5)
      end


