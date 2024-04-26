      real a(5,5), b(5,5), c(6,6)
      a=1
      b=2
      c=1
      f=1
      do 10 i=1,5
	do 10 j=1,5
	  c(j+1,i+1)=j+i
	  do 10 k=1,5
	    c(j+1,i+1) = c(j+1,i+1) + a(k,i)+b(j,k)
10    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
      end
