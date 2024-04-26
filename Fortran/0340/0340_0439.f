      real*4 a(20),b(20)
      common /xx1/a
      common /xx2/ii,b
      do i=1,20
         a(i) = i
         b(i) = i
         n = i-10
         m = i-10
      enddo

      call sub1(a)
      write(*,*) a
      call sub2(b)
      write(*,*) b
      end

      subroutine sub1(aa)
      real*4 aa(20)
      do i=1,10
         aa(i) = aa(i) - 2
      enddo
      end

      subroutine sub2(bb)
      real*4 bb(20)
      do i=1,10
         bb(i) = bb(i) - 2
      enddo
      end

