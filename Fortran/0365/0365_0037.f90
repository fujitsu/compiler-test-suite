	subroutine sub1(a,s,n)
	implicit none
	integer n,i,t
	integer*2 a(n),s(n)
	do i=1,n
	  assign 1 to t
	  goto t(1,2,3)
1 	  a(i)=s(i)+1
2 	  a(i)=s(i)+2
3 	  a(i)=s(i)+3
	end do
	end 
	program main
	integer*2 a(10),s(10)
	data s/10*2/
	call sub1(a,s,10)
	print *,a(1)
	end
