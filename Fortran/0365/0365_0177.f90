      complex a(1000),b
      b=(0.0,0.0)
      do i=1,1000
        a(i)=i
        b=b+a(i)
      end do
      print *,real(b)
      end
