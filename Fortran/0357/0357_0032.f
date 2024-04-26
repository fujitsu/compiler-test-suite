      real a(5,5), b(5,5), c(18,18)
      a=1
      b=2
      c=1
      f=1
      k=1
      do 10 i=1,5
	do 10 j=1,5
	  c(j+i+k,i+i)=j+i
	  do 10 k=1,5
	    c(j+i+k,i+i) = c(j+i+k,i+i) + a(k,i)+b(j,k)
10    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
      end
