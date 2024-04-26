      integer*4 a(6,6), d(6)
      integer*4 b(6,6),e(6)
      integer*4 c(6,6)
1     a=1
      b=2
      c=1
      d=0
      e=2
      num=1
      do 10 i=1,5
	do 20 j=1,5
	  c(i,j)  = 1
	  do 30 k=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
30    continue
20    continue
10    continue
      j=5
      do 40 i=1,5
	  c(i,j)  = 1
	do 40 j=1,5
	  do 40 k=1,5
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
40    continue
      do 50 i=1,5
	  d(i)  = 1
	do 50 j=1,5
	  do 50 k=1,5
	    d(i) = d(i) + a(k,i)+b(j,k)
50    continue
      k=5
      do 60 i=1,5
	  e(i)  = 1
	do 60 j=1,5
	    e(i) = d(i) + a(k,i)+b(j,k)
60    continue
      e  = 1
      k=5
      do 70 i=1,5
	do 70 j=1,5
	    e(i) = d(i) + a(k,i)+b(j,k)
70    continue
      do 80 i=1,5,2
	  d(i)  = 1
	do 80 j=1,5,2
	  do 80 k=1,5,2
	    d(i) = d(i) + a(k,i)+b(j,k)
80    continue
      do 90 i=1,5,num
	do 90 j=1,5,2
	  c(i,j)  = 1
	  do 90 k=1,5,1
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
90    continue
      do 100 i=num,5,num
	do 100 j=1,5,2
	  c(i,j)  = 1
	  do 100 k=1,5,1
	    c(i,j) = c(i,j) + a(k,i)+b(j,k)
100    continue
      do 110 i=num,5,num
	do 110 j=1,5,2
	  c(i,j) = 1
	  do 110 k=1,5,1
	    c(i,j) =  a(k,i)+b(j,k)
110    continue
      do 120 i=num,5,num
	do 120 j=1,5,2
	  c(i,j) = 1
	  do 120 k=1,5,1
	    a(i,j) = c(i,j)+ a(k,i)+b(j,k)
120    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
      print *,"d=",d
      print *,"e=",e
2      end
