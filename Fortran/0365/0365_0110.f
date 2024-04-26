      complex a(1000),b

      b=(0.0,0.0)
      do i=2,1000,2
        a(i)=i
        b=b+a(i)
      end do
        
      if (real(b).ne.250500.0)      stop 'ng' 

      do i=2,1000,2
        if (real(a(i)).ne.real(i))  stop 'ng' 
      end do
   
      print *,'ok'
      end
