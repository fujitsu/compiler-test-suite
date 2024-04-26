      real a(5,5), b(5,5), c(5,5)
      equivalence (l,m)
      a=1
      b=2
      c=2
      l=0
      do 10 i=1,5
	do 10 j=1,5
  	  c(j,i) =  2
	  l=l+1
  	  do 10 k=1,5
  	    c(j,i) = c(j,i) + a(k,i)+b(j,k)
	  m=m+1
10    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
         end
