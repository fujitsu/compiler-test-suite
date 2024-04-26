	subroutine sub1(a,s,n)
	dimension a(n),s(n)
	do i=1,n
	  s(i)=a(i) 
	enddo
	end
	subroutine sub2(a,s,n)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = sin(a(i))
	enddo
	print *,b(1)
	end
	subroutine sub3(a,s,n)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = fun(a(i))
	enddo
	print *,b(1)
	end
	subroutine sub4(a,s,n)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = fun(a(i))
	enddo
	print *,b(1)
	contains
	  function fun(x)
	  fun = sin(x)
	  end function
	end
	subroutine sub5(a,s,n)
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = fun(a(i))
	enddo
	print *,b(1)
	contains
	  recursive function fun(x)
	  intent(in)::x
	  fun = sin(x)
	  end function
	end
	subroutine sub6(a,s,n,fun)
	external fun
	dimension a(n),b(100),s(n)
	do i=1,n
	  s(i)=a(i)
	  b(i) = fun(a(i))
	enddo
	print *,b(1)
	end
	subroutine sub7(a,s,n,fun)
	dimension a(n),b(100),s(n)
        interface
          function fun(x)
           real x
          end function
        end interface
	call inn()
	contains 
	  subroutine inn
	  do i=1,n
	    s(i)=a(i)
	    b(i) = fun(a(i))
	  enddo
	  print *,b(1)
	  end subroutine 
	end
	dimension a(2),s(2)
	external fun
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
	end
	function fun(x)
	fun = sin(x)
	end
