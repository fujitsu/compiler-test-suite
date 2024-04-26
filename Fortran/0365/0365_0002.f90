	subroutine sub(a,x)
	real,dimension(2):: a
	do i=1,2
	  x=a(i)
	  a(i) = 0
	enddo
	end
	real,dimension(2):: a
	a=(/1,3/)
	call sub(a,x)
	print *,merge("OK","NG",a(1)==0.and.a(2)==0.and.x==3)
	end
