      real a(300,300),b(300,300),c(300,300) 
      a=1
      b=2
      c=3
c
      do 10 i=1,300
        do 10 j=1,300
          do 10 k=1,300
	    a(i,j) = a(i,j) + b(i,k)*c(k,j)
10    continue
c
      do 20 k2=1,12
        do 20 j=1,300
          do 20 k1=1,25
            k=k1 + (K2-1)*25
            do 20 i=1,300
	      a(i,j) = a(i,j) + b(i,k)*c(k,j)
20    continue
      do 30 i=1,10,10
        do 30 j=1,10,10
          print *,a(i,j)
30    continue
      end
