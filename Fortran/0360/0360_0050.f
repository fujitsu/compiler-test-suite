      real a(16)/16*0/,b(16)/16*2/
      real c(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      do i=1,16
         a(i) = b(i) + c(i)
      enddo
      write(6,*) a
      call sub(a,b,c,16)
      end

      subroutine sub(a,b,c,n)
      real a(n),b(n),c(n)
      do i=1,n
         a(i) = b(i) + c(i)
      enddo
      write(6,*) a
      end
