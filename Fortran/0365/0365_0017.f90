	subroutine sub1(a,s,n)
	implicit none
	integer n,i,t
	integer*2 a(n),s(n)
	do i=1,n
	  select case( i )
	  case (1)
 	  a(i)=s(i)+1
	  case (2)
 	  a(i)=s(i)+2
	  case (3)
 	  a(i)=s(i)+3
	  case (4)
 	  a(i)=s(i)+4
	  case (5)
 	  a(i)=s(i)+5
	  end select
	end do
	end 
	subroutine test1
	integer*2 a(10),s(10)
	data a/10*0/
	data s/10*2/
	call sub1(a,s,10)
	print *,a
	end
	subroutine sub2(a,s,n)
	implicit none
	integer n,i,t
	integer*2 a(n),s(n),x
	x=0
	do i=1,n
	  select case( i )
	  case (1)
 	  a(i)=s(i)+1
	  case (2)
 	  a(i)=s(i)+2
	  case (3)
 	  a(i)=s(i)+3
	  case (4)
 	  a(i)=s(i)+4
	  case (5)
 	  a(i)=s(i)+5
	  end select
	  x=x+1
	end do
	print *,x
	end 
	subroutine test2
	integer*2 a(10),s(10)
	data a/10*0/
	data s/10*2/
	call sub2(a,s,10)
	print *,a
	end
	call test1
	call test2
	end
