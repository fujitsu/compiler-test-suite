      integer a(16)/16*0/
      integer*8 b(16)/16*0/
      do i=1,16
         a(i) = i
         b(i) = i
      enddo
      write(6,*) a
      write(6,*) b


      do i=1,4
         a(i) = -i
         b(i) = -i
      enddo
      write(6,*) a
      write(6,*) b
      end
