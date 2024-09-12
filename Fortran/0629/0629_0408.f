      integer a(5)/1,2,3,4,5/
      integer b(5)/5,6,7,8,9/
      integer c(5)/2,3,4,5,6/
      do i=1,5
         write(6,1) a(i),b(i),c(i)
      enddo
 1    format(3i5)
      end
