      parameter(n1=10,n2=10)
      real*8 a(n1,n2),b(n1,n2),c(n1,n2)
      do i=1,n1
      do j=1,n2
         a(i,j)=i
         b(i,j)=i
         c(i,j)=i
      enddo
      enddo
      call sub(a,b,c,n1,n2)
      write(6,*) a(1,1)
      stop
      end
      subroutine sub(a,b,c,n1,n2)
      real*8 a(n1,n2),b(n1,n2),c(n1,n2)

      do i=1,n1
         do j=1,n2
            a(i,j) = b(i,j) * c(i,j)
         enddo
      enddo
      end
