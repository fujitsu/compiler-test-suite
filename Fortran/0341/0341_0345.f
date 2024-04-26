      real a(5,5), b(5,5), c(5,5)
      a=1
      b=2
      do 10 i=1,5
	do 10 j=1,5
	  c(i,j)  = 1
	  do 10 k=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
10    continue
      do 20 i=1,5
	do 20 j=1,5
	  c(i,j)  = 1
	  do 20 k=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
20    continue
      do 30 i=1,5
	do 30 j=1,5
	  c(i,j)  = 1
	  do 30 k=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
	  do 30 l=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
30    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
      end
