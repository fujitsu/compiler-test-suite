	subroutine sub(a,b,c,d,e,f,o,p,q,x,n)
	implicit none
	integer i,n
	logical x
	real    a,b,c,d,e,f,o,p,q
	dimension a(n),b(n),c(n),d(n),e(n),f(n),o(n),p(n),q(n),x(n)
	do i=1,n
	  o(i) = p(i) * q(i)
	  if( x(i) ) then
	    a(i) = b(i+1) * c(i)
   	  endif
	  d(i) = e(i) * f(i)
	end do
	end 
	implicit none
	integer n,i
	parameter(n=11)
	logical x
	real    a,b,c,d,e,f,o,p,q
	dimension a(n),b(n),c(n),d(n),e(n),f(n),o(n),p(n),q(n),x(n)
	do i=1,n
          a(i) = 0
	  b(i) = 2
	  c(i) = 3
          d(i) = 0
	  e(i) = 2
	  f(i) = 3
          o(i) = 0
	  p(i) = 4
	  q(i) = 5
	  x(i) = mod(i,2)
	end do
	call sub(a,b,c,d,e,f,o,p,q,x,n-1)
	print *,a
	print *,d
	print *,o
	end
