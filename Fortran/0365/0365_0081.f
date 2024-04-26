      integer:: a(100),b(1000)
      call sub(a,b,c)
      end
     
      subroutine sub(a,b)
      integer:: a(100),b(1000)
      do i=1,50
        a(i)=1
      end do
      do i=1,1000
        b(i)=2
      end do
      do i=51,100
        a(i)=3
      end do

      do i=1,50
        if (a(i).ne.1) stop 'ng'
      end do
      do i=51,100
        if (a(i).ne.3) stop 'ng'
      end do
      do i=1,1000
        if (b(i).ne.2) stop 'ng'
      end do
      print *,'ok'
      end
