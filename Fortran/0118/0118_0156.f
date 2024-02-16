      parameter(n=10)
      real *8 a(n),b(n),c(n)
      do i=1,n
        a(i) = i
        b(i) = i
        c(i) = i
      enddo
      call sub1(a,b,c,n)
      write(6,9) a
      write(6,9) b
      call sub2(a,b,c,n)
      write(6,9) a
      write(6,9) b
 9    format(5f10.5)
      stop
      end
      subroutine sub1(a,b,c,n)
      real*8 a(n),b(n),c(n)
      do i = 1, n
        if (.true.) then
          a(i) = i
        endif
        b(i) = a(i) + c(i)
      enddo
      end subroutine
      subroutine sub2(a,b,c,n)
      real * 8 a(n),b(n),c(n)
      integer * 8 m
      Y=0
      m=10
      do i=1,m
        if (Y.eq.0) then
          a(i) = a(i)+b(i)
        else
          b(i) = b(i)+c(i)
        endif
      enddo
      return
      end
