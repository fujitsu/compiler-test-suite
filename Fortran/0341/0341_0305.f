      real a(5,5), b(5,5), c(5,5)
      a=1
      b=2
      c=1
      d=0
      e=0
      f=1
      g=5
      do 10 i=1,5
	do 10 j=1,5
	  c(i,j)=g
	  do 10 k=f,g
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
10    continue
      print '(a,25f11.8)',"a=",a
      print '(a,25f11.8)',"b=",b
      print '(a,25f11.7)',"c=",c
      end
