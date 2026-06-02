      integer a(10),b(10),t
      data    a/10*0/,b/10*-1/
      do i=1,10
        t = ishft(b(i),31)
        j = -33
        a(i) = ishft(t,j)
      enddo
      write(6,*) a
      end
