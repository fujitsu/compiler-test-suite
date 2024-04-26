      real a(5,5), b(5,5), c(5,5)
      a=1
      b=2
      c=1
      f=1
      d=0
      do 10 i=1,5
	do 10 j=1,5
	  c(i,j)=1
	  d=d+1
	  do 10 k=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
	    d=d+1
10    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
      end
