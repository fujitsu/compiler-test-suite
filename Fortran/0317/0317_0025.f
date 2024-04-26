	subroutine sub(a,b,c,inbase,n)
	implicit none
	integer n,i
	integer a(n),b(n)
	logical*1 c(n),x,y
	pointer(inbase,y)
	pointer(base,x)
	do i=1,n
	  if( a(i) .lt. b(i) ) then
            base=inbase+4
            c(i) = x
          endif
	end do
	end

	program main
	implicit none
	integer n,i
	parameter(n=10)
	integer a(n),b(n)
	logical*1 c(n),x,z(n)
        pointer(base,x)
        c=.false.
        base = 0
	do i=1,n
	a(i) = i
	b(i) = i
	end do
	call sub(a,b,c,base,n)
	do i=1,n
	z(i) = c(i)
	end do
	print *,z
	end
	
