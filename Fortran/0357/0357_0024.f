      real a(5,5), b(5,5), c(5,5)
      a=1
      b=2
      c=1
      d=0
      e=0
      f=1
      l=1
      m=1
      do 10 i=1,5
	do 10 j=1,5
	  c(l,m)=f
	  do 10 k=1,5
	    c(l,m) = c(l,m) + a(k,i)+b(j,k)
	    l=1
	    m=1
	    f=1
10    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
      end
