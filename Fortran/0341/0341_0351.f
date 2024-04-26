      real*8 a(5,5), d(5),b(5,5),c(5,5)
1     a=1
      b=2
      c=1
      d=0
      e=2
      do 40 i=1,5,1
	d(i) = 1
	do 40 j=1,5,2
	  c(i,j) = 1
	  do 40 k=1,5,1
	    c(i,j) = c(i,j)+ a(k,i)+b(j,k)
40    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
      print *,"d=",d
2      end
