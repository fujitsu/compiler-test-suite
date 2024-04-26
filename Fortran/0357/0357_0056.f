      real c(10,10)
      c=2
      call sub(c,i,j)
      end
      subroutine sub(c,i,j)
      real  d(10), e(10)
      real a(5,5), b(5,5), c(5,5)
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
	  c(j,i) = 0
  	  do 10 k=1,5
  	    c(j,i) = c(j,i) + a(k,i)+b(j,k)+d(i)+e(j)
10    continue
c
      do 20 i1=1,5
        do 20 i2=1,5
          sa = sa + a(i1,i2)
          sb = sb + b(i1,i2)
          sc = sc + c(i1,i2)
20    continue
      if (abs(sa-0.0).gt.1.0e-6) print *,"a=",a
      if (abs(sb-25.0).gt.1.0e-6) print *,"b=",b
      if (abs(sc-1000.0).gt.1.0e-6) print *,"c=",c
      print *,"*** ok ***"
      end
