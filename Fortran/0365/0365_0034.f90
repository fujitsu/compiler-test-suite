	subroutine sub1(a,b,c,x,n)
	implicit none
	integer n,i
	real a(0:n),b(0:n),c(0:n),x(0:n)
        do i=1,n
          c(i) = a(i-1) + b(i-1)
          a(i) = x(i)
          b(i) = a(i-1)
	end do
	end
	subroutine sub2(a,b,c,x,n)
	implicit none
	integer n,i
	real a(0:n),b(0:n),c(0:n),x(0:n)
        do i=1,n
          c(i) = a(i-1) + b(i-1)
          a(i) = x(i)
          b(i) = a(i-1)
	end do
	end
	implicit none
	integer n,i
	parameter(n=1000)
	real a1(0:n),b1(0:n),c1(0:n),x1(0:n)
	real a2(0:n),b2(0:n),c2(0:n),x2(0:n)
	do i=0,n
	  a1(i) = i
	  b1(i) = i*1000
	  c1(i) = i*(-1)
	  x1(i) = i*(-1000)
	  a2(i) = i
	  b2(i) = i*1000
	  c2(i) = i*(-1)
	  x2(i) = i*(-1000)
	end do
	call sub1(a1,b1,c1,x1,n)
	call sub2(a2,b2,c2,x2,n)
	if(all(a1.eq.a2).and.all(b1.eq.b2).and.all(c1.eq.c2)) then
	  print *,' OK '
	else 
	  print *,' NG ',b1(0),b2(0),c1(0),c2(0)
	endif
	end
