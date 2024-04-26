      real a(5,5), b(5,5), c(5,5),d(5,5)
      a=1
      b=2
      c=2
      m=0
      do 10 i=1,5
	  d(i,i) = m
	  m=m+1
	do 10 j=1,5
  	  do 10 k=1,5
  	    c(j,i) = c(j,i) + a(k,i)+b(j,k)+d(i,i)
10    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
         end
