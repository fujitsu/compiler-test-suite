      complex(2) a,b,c
      complex(4) aa,bb
      real x,y
      aa=(1,2)
      bb=(3,4)
      a=aa
      b=bb
      y = real(a) + imag(b)
      write(2,*) y
      if (abs(y- 5)>0.0001) print *,203
print *,'pass'
      end
