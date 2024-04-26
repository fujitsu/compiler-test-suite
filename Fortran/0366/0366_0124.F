	subroutine test1
	logical a(1000),x(1000)
	real    ref(1000)

	integer*8 adr(1000)



	call in(ref)
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG1'
	contains
	subroutine in(arg)
	real    arg(1000)
	do i=1,1000
	  adr(i) = loc(arg(1))
        end do
	end subroutine
	end
	subroutine test2
	logical a(1000),x(1000)
	common /com/ref
	real    ref(1000)

	integer*8 adr(1000)



	call in(ref)
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG2'
	contains
	subroutine in(arg)
	real    arg(:)
	do i=1,1000
	  adr(i) = loc(arg(1))
        end do
	end subroutine
	end
	recursive subroutine test3
	logical a(1000),x(1000)
	real    ref(1000)

	integer*8 adr(1000)



	call in(ref)
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG3'
	contains
	recursive subroutine in(arg)
	real    arg(1000)
	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	end subroutine 
	end
	subroutine test4
	logical a(1000),x(1000)
	real,allocatable::ref(:)

	integer*8 adr(1000)



	allocate( ref(1000) )
	call in(ref)
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG4'
	contains
	subroutine in(arg)
	real::arg(:)
	do i=1,1000
	  adr(i) = loc(arg(1))
        end do
	end subroutine 
	end
	recursive subroutine test5
	logical a(1000),x(1000)
	real,allocatable::ref(:)

	integer*8 adr(1000)



	allocate( ref(1000) )
	call in(ref)
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG5'
	contains
	recursive subroutine in(arg)
	real::arg(:)
	do i=1,1000
	  adr(i) = loc(arg(1))
        end do
	end subroutine
	end
	call test1
	call test2
	call test3
	call test4
	call test5
	print *,' PASS '
	end
