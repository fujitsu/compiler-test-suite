parameter(k=2)
   complex(4) bb
   complex(k) a,b,c
      real y
      bb=(1,2)
      b=bb
      c=-bb
      a = - b
      y = real(a)
      if (y/=-1) print *,101,y
      if (-b/=c) print *,102,cmplx(-b),cmplx(c)
print *,'pass'
      end
