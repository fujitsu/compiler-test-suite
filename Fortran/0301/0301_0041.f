      subroutine sub1(a,n,m)
      integer a(n,m)
      do j=1,1
         do i=1,n
            a(i,j)=i+j
         enddo
      enddo
      end

      subroutine sub2(a,n,m)
      integer a(n,m)
      do j=1,1
         do i=1,10
            a(i,j)=i+j
         enddo
      enddo
      end

      subroutine sub3(a,n,m)
      integer a(n,m)
      do j=1,2
         do i=1,n
            a(i,j)=i+j
         enddo
      enddo
      end

      program main
      parameter(n=10,m=10)
      integer a(n,m)
      call sub1(a,n,m)
      call sub2(a,n,m)
      call sub3(a,n,m)
      print *,"pass"
      end
