	subroutine sub1(a,x)
	real,dimension(2):: a
	do i=1,2
	  s=a(i)
	  a(i) = 0
	enddo
	x=s
	end
	recursive subroutine sub2(a,x)
	real,dimension(2):: a
	do i=1,2
	  s=a(i)
	  a(i) = 0
	enddo
	x=s
	end
	recursive subroutine sub3(a,x)
	real,dimension(2):: a
	save s
	do i=1,2
	  s=a(i)
	  a(i) = 0
	enddo
	x=s
	end
	real,dimension(2):: a
	a=(/1,3/);call sub1(a,x);print *,a,x
	a=(/1,3/);call sub2(a,x);print *,a,x
	a=(/1,3/);call sub3(a,x);print *,a,x
	end
