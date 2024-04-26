      real a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/
      real c(10)/1,8,8,1,8,1,8,1,1,8/

      do i=1,10
         if (c(i) .gt. 5) then
            a(i) = b(i) + 2
         endif
      enddo
      write(6,*) a


      do i=1,10
         if (c(i) .gt. 5) then
            a(i) = b(i) + 2
         endif
      enddo
      write(6,*) a
      end
