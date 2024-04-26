      real a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      integer c(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         a(i) = b(c(i)) + 2
      enddo
      write(6,*) a


      do i=1,10
         a(i) = b(c(i)) + 2
      enddo
      write(6,*) a
      end
