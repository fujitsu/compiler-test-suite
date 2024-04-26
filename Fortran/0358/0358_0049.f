      integer a(10),b(10),c(10)
      data a/10*0/
      data b/10*5/
      data c/10*10/
      call sub(a,b,c,10)
      do i=1,10
         if (a(i) .ne. 0) then
            write(6,*) "ng"
            write(6,*) a
            write(6,*) b
            write(6,*) c
            stop
         endif
      enddo
      write(6,*) "ok"
      end

      subroutine sub(a,b,c,n)
      integer a(n),b(n),c(n)
      do i=1,n
         a(i) = min(b(i), 0)
      enddo
      return
      end
