      real a(10),b(10),c(10)
      data a,b,c/10*0,1,2,3,4,5,6,7,8,9,10,10*4/
      do i=1,10
         a(i) = b(i) / c(i) + 2
      enddo
      write(6,*) a

      do i=1,10
         a(i) = b(i) * c(i) * 2
      enddo
      write(6,*) a

      do i=1,10
         a(i) = -b(i) * ((-c(i)) / 2)
      enddo
      write(6,*) a


      do i=1,10
         a(i) = -b(i) / (-c(i)) - 2
      enddo
      write(6,*) a
      end




