	subroutine sub1(a,x)
	real,dimension(2):: a
	real,dimension(2):: s
	do i=1,2
	  s(1)=a(i)
	  a(i) = 0
	enddo
	x=s(1)
	end
	recursive subroutine sub2(a,x)
	real,dimension(2):: a
	real,dimension(2):: s
	do i=1,2
	  s(1)=a(i)
	  a(i) = 0
	enddo
	x=s(1)
	end
	recursive subroutine sub3(a,x)
	real,dimension(2):: a
	real,save,dimension(2):: s
	do i=1,2
	  s(1)=a(i)
	  a(i) = 0
	enddo
	x=s(1)
	end
	real,dimension(2):: a
	a=(/1,3/);call sub1(a,x);print *,a,x
	a=(/1,3/);call sub2(a,x);print *,a,x
	a=(/1,3/);call sub3(a,x);print *,a,x
	end
