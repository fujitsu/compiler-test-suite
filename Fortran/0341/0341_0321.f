      real a(5,5), b(5,5), c(5,5)
      a=1
      b=2
      c=2
      f=1
      do 10 i=1,5
	do 10 j=1,5
  	  c(j,i) = 1
	  print '(f11.8)',c(i,j)
12	  do 10 k=1,5
13	    c(j,i) = c(j,i) + a(k,i)+b(j,k)
10    continue
      print '(a,25f11.8)',"a=",a
      print '(a,25f11.8)',"b=",b
      print '(a,25f11.7)',"c=",c
100      end
