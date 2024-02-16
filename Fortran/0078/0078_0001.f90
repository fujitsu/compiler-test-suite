parameter(k=2)
   complex(k) a,b
      real y
      b=(1,2)
      a = - b
      y = real(a)
      if (y/=-1) print *,101
      if (-b/=-(1,2)) print *,102
print *,'pass'
      end
