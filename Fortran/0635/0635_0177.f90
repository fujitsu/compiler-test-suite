      subroutine sub1(a,b,n)
      integer a(n),b(n)
      do i=1,n
         a(i)=i
         b(i)=i+1
      enddo
      end

      subroutine sub2(c,d,n)
      integer c(n),d(n)
      do i=1,50
         c(i)=i+2
         d(i)=i+3
      enddo
      end

      subroutine sub3(a,b,c,d,n,n1,n2,n3,n4)
      integer a(n),b(n),c(n),d(n)
      do i=1,n1
         a(i)=b(i)+c(i)+d(i)
      enddo
      do j=1,n2
         b(j)=a(j)+c(j)+d(j)
      enddo
      call dummy
      do k=1,n3
         c(k)=b(k)+a(k)+d(k)
      enddo
      do l=1,n4
         d(l)=b(l)+c(l)+a(l)
      enddo
      end

      subroutine sub4(e,a,b,n)
      integer e(n,n),a(n),b(n)
      do j=1,n
         do i=1,n-1  
            e(i,j) = a(i)-b(j)
         enddo
      enddo
      end

      program main
      parameter(n=50) 
      integer a(n),b(n),c(n),d(n),e(n,n)
      data e/2500*0/
      call sub1(a,b,n)
      call sub2(c,d,n)
      call sub3(a,b,c,d,n,n,n,n,n)
      call sub4(e,a,b,n)
      print *,a
      print *,b
      print *,c
      print *,d
      print *,sum(e)
      end

      subroutine dummy
      end
