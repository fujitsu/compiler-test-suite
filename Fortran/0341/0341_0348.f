      real a(5,5), b(5,5), c(5,5)
      a=1
      b=2
      do 10 i=1,5
	do 20 j=1,5
	  c(i,j)  = 1
	  do 20 k=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
	do 20 l=1,5
	  do 20 m=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
20    continue
10    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
      end
