	module test
	contains
	subroutine sub1(a,s,n)
	dimension a(n),s(n)
	do i=1,n
	  s(i)=a(i) 
	enddo
	end subroutine 
	subroutine sub2(a,s,n)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = sin(a(i))
	enddo
	if( abs(b(1)-0.841470957) > 0.00001 ) print *,'NG'
	end subroutine 
	subroutine sub3(a,s,n)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = fun(a(i))
	enddo
	if( abs(b(1)-0.841470957) > 0.00001 ) print *,'NG'
	end subroutine 
	subroutine sub4(a,s,n)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = fun(a(i))
	enddo
	if( abs(b(1)-0.841470957) > 0.00001 ) print *,'NG'
	contains
	  function fun(x)
	  fun = sin(x)
	  end function
	end subroutine 
	subroutine sub5(a,s,n)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = fun(a(i))
	enddo
	if( abs(b(1)-0.841470957) > 0.00001 ) print *,'NG'
	contains
	  recursive function fun(x)
	  intent(in)::x
	  fun = sin(x)
	  end function
	end subroutine 
	subroutine sub6(a,s,n,fun)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = fun(a(i))
	enddo
	if( abs(b(1)-0.841470957) > 0.00001 ) print *,'NG'
	end subroutine 

	subroutine sub7(a,s,n,fun)
        real,external :: fun
	dimension a(n),b(100),s(n)
	call inn()
	contains 
	  subroutine inn
	  do i=1,n
	    s(i)=a(i)
	    b(i) = fun(a(i))
	  enddo
	  if( abs(b(1)-0.841470957) > 0.00001 ) print *,'NG'
	  end subroutine 
	end subroutine 
	subroutine sub8(a,s,n)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = ent(a(i))
	enddo
	if( abs(b(1)-0.540302277) > 0.00001 ) print *,'NG'
	end subroutine 
	function fun(x)
	fun = sin(x)
	end function
	function dummy(x)
	dummy = sin(x)
	return
	entry ent(x)
	dummy = cos(x)
	end function
	end module
	use test
	dimension a(2),s(2)
	a(1) = 1
	a(2) = 3
	call sub1(a,s,2)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub2(a,s,2)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub3(a,s,2)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub4(a,s,2)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub5(a,s,2)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub6(a,s,2,fun)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub7(a,s,2,fun)
	print *,s
	a(1) = 1
	a(2) = 3
	call sub8(a,s,2)
	print *,s
	end
