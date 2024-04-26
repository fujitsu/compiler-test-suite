      complex*32 ::b(1)=(0.0,0.0)
      call sub(b,1000,1,-2)

      print *,'ok'
      end
      
      subroutine sub(b,k,n,m)
      complex*32  ::a(1000)=(0.0,0.0),b(1)
      integer     ::c(1000), r(1)

      do i=k,n,m               
        a(i)=b(1)+2.0
      end do

      r(1)=0
      do i=1,1000,2
        c(i)=2
        r(1)=r(1)+c(i)
      end do
        
      do i=k,n,m               
        if (real(a(i)).ne.2.0)  stop 'ng'
        if (imag(a(i)).ne.0.0)  stop 'ng'
      end do
      if (r(1).ne.1000)         stop 'ng'
      end
