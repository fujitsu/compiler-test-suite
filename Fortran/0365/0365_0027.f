	subroutine sub(a,b,c,x,n)
	implicit none
	integer*1 n,a,b,c,x,t,s
	integer   i
	dimension a(n),b(n),c(n),x(n)
        s=0
        do i=1,n
          t = a(i)
	  if( a(i) .gt. 0 ) then
	    t = b(i) 
            s = s + x(i)
          endif
	  c(i) =  t
	end do
	print *,c,x,s
	end
	implicit none
	integer*1 n,a,b,c,x
	integer   i
	parameter(n=100)
	dimension a(n),b(n),c(n),x(n)
	a = (/(i,i=-(n/2),n/2-1)/)
	b = (/(i,i=1,n)/)
	x = (/(i,i=1,n)/)
	call sub(a,b,c,x,n)
	end
