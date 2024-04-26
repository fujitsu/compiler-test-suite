      complex ::a(1000)=(2.0,4.0),b

      b=sum(a)
        
      if (real(b).ne.2000.0)      stop 'ng'
      if (imag(b).ne.4000.0)      stop 'ng' 

      print *,'ok'
      end
