	subroutine sub(a,d,ss,n)
	dimension a(n),d(n)
	s=ss
	do i=1,n
	  s=s+d(i)
	  a(i) = a(i) + 1
        end do
	ss=s
	end
	dimension d(10),a(10)
	real d/1,2,3,4,5,6,7,8,9,10/
	s=0
	a=0
	call sub(a,d,s,10)
	print *,s,sum(d)
	end
