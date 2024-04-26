      program main
      integer a1(100),a2(100,100)
      call init(a1,a2)
      call sub1(a2,100)
      call sub2(a2)
      call sub3(a1)
      call sub4(a2)
      print *,"pass"
      end

      subroutine sub1(a,n)
      integer a(100,100)
      do j=1,n
         do i=1,10
            a(i,j) = i+j
         enddo
      enddo
      end

      subroutine sub2(a)
      integer a(100,100)
      do j=1,10
         do i=1,10
            a(i,j) = i+j
         enddo
      enddo
      end

      subroutine sub3(a)
      integer a(100)
      do j=1,10
         do i=1,10
            a(i) = i+j
         enddo
      enddo
      end

      subroutine sub4(a)
      integer a(100,100)
      do j=1,10
         do i=1,10
            a(j,i) = i+j
         enddo
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
