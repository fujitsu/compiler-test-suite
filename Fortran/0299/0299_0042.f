      parameter(n1=100,n2=100,n=100)
      real * 4 a(n1,n2),b(n1,n2),c(n1,n2)
      integer * 4 nary(n)

      m=0
      do i=1,n1
      do j=1,n2
        a(i,j) = m
        b(i,j) = m
        c(i,j) = m
        nary(i) = m
        m=m+1
      enddo
      enddo
      call sub(a,b,c,nary,n,n1,n2)
      write(6,*) a
      stop
      end

      subroutine sub(a,b,c,nary,n,n1,n2)
      real * 4 a(n1,n2),b(n1,n2),c(n1,n2)
      integer * 4 nary(n),nn
      nn = nary(1)
      do i=1,n1
       do j=nn,n2
         a(i,j) = b(i,j)+c(i,j)
       enddo
       nn = nary(i)
      enddo
      return
      end
