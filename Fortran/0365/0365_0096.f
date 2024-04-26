      integer a(-100:1002),b(-500:500)

      do i=-100,1002,2
        a(i)=i
      end do

      do j=500,-500,-6
        b(j)=j
      end do
        
      do i=-100,1002,2
        if (a(i).ne.i) stop 'ng'
      end do

      do j=500,-500,-6
        if (b(j).ne.j) stop 'ng'
      end do
        
      print *,'ok'
      end
