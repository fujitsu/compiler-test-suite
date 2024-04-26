      real c(10,10)
      c=2
      call sub(c)
      end
      subroutine sub(c)
      real a(5,5), b(5,5), c(5,5)
      real d(10), e(10)
      data sa,sb,sc/3*0./
      a=0
      b=1
      c=2
      d=3
      e=4
      m=1
      n=2
      do 10 i=1,5
	do 10 j=1,5
	  c(j,i) = 1
  	  do 10 k=1,5
  	    c(j,i) = c(j,i) + a(k,i)+b(j,k)+d(i)+e(j)
10    continue
c
      do 20 i=1,5
	do 20 j=1,5
          sa = sa + a(i,j)
          sb = sb + b(i,j)
          sc = sc + c(i,j)
20    continue
      if (abs(sa-0.0).gt.1.0e-6) print *,"a=",a
      if (abs(sb-25.0).gt.1.0e-6) print *,"b=",b
      if (abs(sc-1025.0).gt.1.0e-6) print *,"c=",c
      print *,"*** ok ***"
      end
