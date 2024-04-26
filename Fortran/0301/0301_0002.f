      write(6,*) 'ok'
      end
      subroutine sub(a,b,c,n,n1)
      real * 8 a(n,n),b(n,n),c(n,n)
      do j=1,n1
      do i=1,n1
       a(i,j) = a(i,j)+b(i,j)
      enddo
      enddo
      return
      end
