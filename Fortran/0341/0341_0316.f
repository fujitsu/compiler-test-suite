      real a(20,20), b(20,20), c(20,20)
      a=1
      b=2
      c=1
      f=1
      do 10 i=1,5
	do 10 j=1,5
	  c(j+3+i,i+i)=j+i
	  do 10 k=1,5
	    c(j+2+i,i+i) = c(j+2+i,i+i) + a(k,i)+b(j,k)
10    continue
      print '(a,400f11.8)',"a=",a
      print '(a,400f11.8)',"b=",b
      print '(a,400f11.7)',"c=",c
      end
