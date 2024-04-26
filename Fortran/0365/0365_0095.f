      integer a(-100:1000),b(-500:500)

      do i=-100,1000,13
        a(i)=i
      end do

      do j=500,-500,-7
        b(j)=j
      end do
        
      do i=-100,1000,13
        if (a(i).ne.i) stop 'ng'
      end do

      do j=500,-500,-7
        if (b(j).ne.j) stop 'ng'
      end do
        
      print *,'ok'
      end
