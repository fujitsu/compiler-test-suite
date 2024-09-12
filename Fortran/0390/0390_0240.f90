      complex*8 a(1000),b,c(10)

      do i=2,1000,2
        a(i)=i
        b=a(i)
      end do
        
      if (real(b).ne.real(a(1000)))  stop 'ng p051' 
      do i=2,1000,2
        a(i)=a(i)+i
        c(1)=a(i)
      end do
        
      if (real(c(1)).ne.real(a(1000)))  stop 'ng p051' 
      do i=2,1000,2
        if (real(a(i)).ne.real(i+i))  stop 'ng p051' 
      end do
   
      print *,'pass'
      end
