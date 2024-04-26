      parameter(n=10)
      real * 8 a(n,n),b(n,n)
      integer * 4 c(n)
      a=1
      b=2
      c=5
      m1 =0
      call sub(a,b,c,n,m1)
      write(6,*) sum(a)
      stop
      end
      subroutine sub(a,b,c,n,m1)
      real * 8 a(n,n),b(n,n)
      integer * 4 c(n)
      m=-1000
      do i=1,m1
        m = 10
      enddo        

      do i=1,m1
      do j=1,c(m)
        a(i,j) = a(i,j)+b(i,j)
      enddo
      enddo
      return
      end
