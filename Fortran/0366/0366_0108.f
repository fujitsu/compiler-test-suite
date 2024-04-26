      call sub1(i,1000)
      if (i.ne.1001)   stop 'ng'
      call sub2(i)
      if (i.ne.1001)   stop 'ng'
      print *,'ok'
      end

      subroutine sub1(i,n)
      dimension a(1000)
      do i=1,n
        a(i) = 1
      end do
      end
      subroutine sub2(i)
      dimension a(1000)
      do i=1,1000
        a(i) = 1
      end do
      end
