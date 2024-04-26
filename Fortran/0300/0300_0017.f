      subroutine sub1(s,a,n)
      integer s,a(n,n)
      do j=1,n
         do i=1,n
            s=s+a(i,j)
         enddo
      enddo
      end

      subroutine sub2(a,b,n)
      integer a(n,n),b(n,n)
      do j=1,n
         do i=1,n
            b(i,j)=a(i,j)
         enddo
      enddo
      end


      program main
      parameter(n=8)
      integer s,a(n,n),b(n,n)
      m=1
      s=0
      do j=1,n
         do i=1,n
            a(i,j)=m
            b(i,j)=0
            m=m+1
         enddo
      enddo
      call sub1(s,a,n)
      call sub2(a,b,n)
      print *,"ok"
      end
