      call sub(1000,1,-2)
      end
      
      subroutine sub(k,n,m)
      complex*32  ::a(1000)=(0.0,0.0)

      do i=k,n,m               
        a(i)=a(i)+2.0
        a(i)=a(i)/2.0
      end do
        
      do i=k,n,m               
        if (real(a(i)).ne.1.0)  stop 'ng'
        if (imag(a(i)).ne.0.0)  stop 'ng'
      end do

      print *,'ok'
      end
