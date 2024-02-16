      integer m(100),a(100)
      data m,a/200*0/
      a(1) = 10

      call sub1(m,a)
      end

      subroutine sub1(m,a)
      integer m(100),a(100)
      integer m1,m2

      do j=1,100
         m1 = m(5)
         m2 = a(j)
         if (m2.gt.m1) then
            m(5) = m2
         endif
      enddo
      write(6,*) m1
      return
      end
