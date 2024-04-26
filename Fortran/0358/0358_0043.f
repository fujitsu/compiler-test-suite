      integer a(10),b(10)
      data a/10*0/
      data b/-1,-2,3,4,-5,6,-7,8,9,-10/
      call sub(a,b,10)
      do i=1,10
         if (a(i) .ne. i) then
            write(6,*) "ng"
            write(6,*) a
            write(6,*) b
            stop
         endif
      enddo
      write(6,*) "ok"
      end

      subroutine sub(a,b,n)
      integer a(n),b(n),c(n)
      do i=1,n
         a(i) = abs(b(i))
      enddo
      return
      end
