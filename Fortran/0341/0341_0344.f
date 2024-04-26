      real c(10,10),e(10)
      c=2
      call sub(i,j,e)
      end
      subroutine sub(i,j,e)
      real  d(10), e(10)
      real a(5,5), b(5,5), c(5,5)
      a=0
      b=1
      c=2
      d=3
      e=4
      m=1
      n=2
      do 10 i=1,5
	do 10 j=1,5
	  c(j,i) = c(j,i) +i
  	  do 10 k=1,5
  	    c(j,i) = c(j,i) + a(k,i)+b(j,k)+d(i)+e(j)
10    continue
      print *,"a=",a
      print *,"b=",b
      print *,"c=",c
         end
