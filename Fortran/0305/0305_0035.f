      parameter(n=10)
      real * 8 a(n),b(n),c(n)
      do i=1,n
        a(i) = 1.
        b(i) = 2.
        c(i) = 3.
      enddo
      call  sub(a,b,c,n)
      print *,' ok '
      stop
      end
      subroutine sub(a,b,c,n)
      real * 8 a(n),b(n),c(n)
      do i=1,n
        a(i) = b(i)+c(i)
        call sub1
      enddo

      return
      end         
      subroutine sub1()
      return
      end
