      call sub(31,-31)
      end

      subroutine sub(k,j)
      integer a(10),b(10),t
      data    a/10*0/,b/10*8/
      do i=1,10
        t = ishft(b(i),k)
        a(i) = ishft(t,j)
      enddo
      write(6,*) a
      end
