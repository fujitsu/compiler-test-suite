      program main
      integer a1(100),a2(100,100)
      call init(a1,a2)
      call sub1(a2,100,100)
      call sub2(a2,100,100)
      call sub3(a1,100)
      call sub4(a1,100)
      print *,"pass"
      end

      subroutine sub1(a,n,m)
      integer a(n,m)
      do j=1,m
         do i=1,n
            a(i,j) = i+j
         enddo
      enddo
      end

      subroutine sub2(a,n,m)
      integer a(n,m)
      do j=1,m
         do i=1,n
            a(i,j) = i+j
         enddo
      enddo
      end

      subroutine sub3(a,n)
      integer a(n)
      do i=1,n
         a(i) = i
      enddo
      end

      subroutine sub4(a,n)
      integer a(n)
      do i=1,n
         a(i) = i
      enddo
      end

      subroutine init(a1,a2)
      integer a1(100),a2(100,100)
      do j=1,100
         a1(j)=0
         do i=1,100
            a2(i,j)=0
         enddo
      enddo
      end

