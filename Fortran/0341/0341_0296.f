      real a(5,5), b(5,5), c(5,5)
      a=1
      b=2
      do 10 i=1,5
	do 10 j=1,5
	  c(i,j)  = 1
	  c(i,j)  = 1
	  c(i,j)  = 1
	  c(i,j)  = 1
	  c(i,j)  = 1
	  c(i,j)  = 1
	  c(i,j)  = 1
	  c(i,j)  = 1
	  c(i,j)  = 1
	  c(i,j)  = 1
	  do 10 k=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
10    continue
      print '(a,25f11.8)',"a=",a
      print '(a,25f11.8)',"b=",b
      print '(a,25f11.8)',"c=",c
      end
