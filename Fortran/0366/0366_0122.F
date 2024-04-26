	subroutine test1
	logical a(1000),x(1000)
	real    ref(1000)

	integer*8 adr(1000)



	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG1'
	end
	subroutine test2
	logical a(1000),x(1000)
	common /com/ref
	real    ref(1000)

	integer*8 adr(1000)



	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG2'
	end
	recursive subroutine test3
	logical a(1000),x(1000)
	real    ref(1000)

	integer*8 adr(1000)



	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG3'
	end
	subroutine test4
	logical a(1000),x(1000)
	real,allocatable::ref(:)

	integer*8 adr(1000)



	allocate( ref(1000) )
	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG4'
	end
	recursive subroutine test5
	logical a(1000),x(1000)
	real,allocatable::ref(:)

	integer*8 adr(1000)



	allocate( ref(1000) )
	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG5'
	end
	call test1
	call test2
	call test3
	call test4
	call test5
	print *,' PASS '
	end
