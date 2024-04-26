	subroutine sub(a,b,ss,n)
	dimension a(n,n),b(n)
	s=ss
	do i=1,n
	  j=1
	  do while( j <= n ) 
	    s=s+a(j,i)
	    j=j+1
	  end do
	  b(i) = b(i) + 1
        end do
	ss=s
	end
	dimension a(2,2),b(2)
	real a
	data a/1,2,3,4/
	s=0
	b=0
	call sub(a,b,s,2)
	print *,s,sum(a),b
	end
