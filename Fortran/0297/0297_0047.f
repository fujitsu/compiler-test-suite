      parameter (n=10,n1=10,n2=10)
      real * 8 a(n,n),b(n,n),c(n,n)
      a =1
      b =2
      c =3
      n3=10
      do j=1,n2
      do i=1,n1
         a(j,i) = b(j,i)+c(i,j)
      enddo
      enddo
      print *,a(1,1)
      call sub(a,b,n,n1,n2,n3)
      end
      subroutine sub(a,b,n,n1,n2,n3)
      real * 8 a(n,n),b(n,n)
      do k=1,n3
      do j=1,n2
      do i=1,n1
           b(i,j) = a(j,i)
      enddo
      enddo
      enddo
      return
      end
