      program main
      parameter(n=5)
      real * 8 a(n,n),b(n,n),c(n,n)
      integer * 4 m
      do j=1,n
      do i=1,n
        a(i,j) = 0
        b(i,j) = i
        c(i,j) = i
      enddo
      enddo
      call sub1(a,b,c,n)
      write(6,99) a
      call sub2(a,b,c,n)
      write(6,99) a
      call sub3(a,b,c,n,1)
      write(6,99) a
      call sub4(a,b,c,n)
      write(6,99) a
 99   format(5f10.5)
      stop
      end

      subroutine sub1(a,b,c,n)
      real * 8 a(n,n),b(n,n),c(n,n)
      integer * 4 m
      do k=1,n
        m = k+1
        do j=1,n
        do i=1,m-1
          a(i,j) = b(k,j)+c(k,i)
        enddo
       enddo
      enddo
      return
      end
      subroutine sub2(a,b,c,n)
      real * 8 a(n,n),b(n,n),c(n,n)
      integer * 4 m
      do k=1,n
        m = k+1
        do j=1,n
        do i=1,m+1-k
          a(i,j) = b(j,k)+c(j,k)
        enddo
       enddo
      enddo
      return
      end
      subroutine sub3(a,b,c,n,mm)
      real * 8 a(n,n),b(n,n),c(n,n)
      integer * 4 m
      do k=1,n
        m = k+1
        do j=1,n-1
        do i=1,m * mm-1
          a(i,j) = b(k,j)+c(k,j)
        enddo
       enddo
      enddo
      return
      end
      subroutine sub4(a,b,c,n)
      real * 8 a(n,n),b(n,n),c(n,n)
      integer * 4 m
      do k=1,n
        m = k+1
        do j=1,n-1
        do i=1,m/j-1
          a(j,i) = b(j,i)+c(j,i)
        enddo
       enddo
      enddo
      return
      end

