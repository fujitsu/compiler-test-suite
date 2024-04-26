      real a(5,5), b(5,5), c(5,5)
      a=1
      b=2
      c=1
      do 10 i=1,5
	do 10 j=1,5
	  do 10 k=1,5
	    c(i,j) = 1
10    continue
      do 11 i=1,5
	do 11 j=1,5
	  do 11 k=1,5
	    c(j,k) = 2
11    continue
      do 12 i=1,5
	do 12 j=1,5
	  do 12 k=1,5
	    c(k,i) = 3
12    continue
      k=5
      do 13 i=1,5
	do 13 j=1,5
	    c(k,i) = 4
13    continue
      do 14 i=1,5
	    c(i,i) = 5
14    continue
      print '(f11.8)',c
      end
