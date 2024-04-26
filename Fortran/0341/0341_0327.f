      real a(5,5), b(5,5), c(5,5)
      a=1
      b=2
      c=2
      f=1
      l=1
      m=5
      do 10 i=1,m
	do 10 j=1,5
	  f=f+1
  	  c(j,i) = c(j,i)+f
  	  do 10 k=1,5
  	    c(j,i) = c(j,i) + a(k,i)+b(j,k)
10    continue
      print '(a,25f11.8)',"a=",a
      print '(a,25f11.8)',"b=",b
      print '(a,25f11.7)',"c=",c
         end
