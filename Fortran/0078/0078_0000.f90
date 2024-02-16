integer,parameter::k=2
      complex(k) a,b,c
      real x,y
      x = 4.0
      b = 4.0
      y = real(b)
      write(1,*) y
      if (b/=4)print *,101
print *,'pass'
      end
