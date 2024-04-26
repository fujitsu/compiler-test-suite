      call sub(1000)
      end

      subroutine sub(n)
      integer a(1000),last
      last=-1
     
      do i=1,n
       a(i)=1
       last=a(i)
      end do

      do i=1,1000
        if (a(i).ne.1)  stop 'ng'
      end do
      print *,'ok'
      end
