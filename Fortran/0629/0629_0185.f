      program main
      integer a1(100,1000),a2(200,300),a3(400,10),b(10),c(10)
      call sub1(n,j,b,c)
      do i=2,n
         a1(i,j)=b(i)*c(i)
         a2(i/2,i)=b(i)*c(i)
         a3(j,i)=b(i)*c(i)
      enddo
      call sub2(a1,a2,a3)
      end

      subroutine sub1(n,j,b,c)
      integer b(10),c(10)
      n=10
      j=2
      do i=1,10
         b(i)=i
         c(i)=i
      enddo
      end

      subroutine sub2(a,b,c)
      integer a(100,1000),b(200,300),c(400,10)
      print *,a(2,2),b(1,2),c(2,2)
      end
