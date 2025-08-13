complex(2) a,b
complex(4) bb
      real y
      bb=(5,6)
      b=bb
      a = - b
      y = real(a)
      write(3,*) y
      if (abs(y+5.0)>0.001) print *,101
print *,'pass'
      end
