	subroutine test1
	logical a(1000),x(1000)
	type TAG
	sequence
	real    ref(1000)
	end type
	type(TAG)st

	integer*8 adr(1000)



	do i=1,1000
	  adr(i) = loc(st%ref(1))
        end do
	if( adr(1) .ne. loc(st%ref(1)) ) print *,'NG1'
	end
	subroutine test2
	logical a(1000),x(1000)
	type TAG
	sequence
	real    ref(1000)
	end type
	type (TAG) st
	common /com/st

	integer*8 adr(1000)



	do i=1,1000
	  adr(i) = loc(st%ref(1))
        end do
	if( adr(1) .ne. loc(st%ref(1)) ) print *,'NG2'
	end
	recursive subroutine test3
	logical a(1000),x(1000)
	type TAG
	sequence
	real    ref(1000)
	end type
	type (TAG) st

	integer*8 adr(1000)



	do i=1,1000
	  adr(i) = loc(st%ref(1))
        end do
	if( adr(1) .ne. loc(st%ref(1)) ) print *,'NG3'
	end
	subroutine test4
	logical a(1000),x(1000)
	type TAG
	sequence
	real,pointer::ref(:)
	end type
	type(TAG) st

	integer*8 adr(1000)



	allocate( st%ref(1000) )
	do i=1,1000
	  adr(i) = loc(st%ref(1))
        end do
	if( adr(1) .ne. loc(st%ref(1)) ) print *,'NG4'
	end
	recursive subroutine test5
	logical a(1000),x(1000)
	type TAG
	sequence
	real,pointer::ref(:)
	end type
	type(TAG) st

	integer*8 adr(1000)



	allocate( st%ref(1000) )
	do i=1,1000
	  adr(i) = loc(st%ref(1))
        end do
	if( adr(1) .ne. loc(st%ref(1)) ) print *,'NG5'
	end
	call test1
	call test2
	call test3
	call test4
	call test5
	print *,' PASS '
	end
