	integer function izero()
	izero = 0
	end
	subroutine test1
	real    ref(1000)
	pointer(base,ref)
	integer*8 adr(1000)
	base = izero();
	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. base ) print *,'NG1'
	end
	subroutine test2
	real    ref(1000)
	pointer(base,ref)
	common /com/base
	integer*8 adr(1000)
	base = izero()
	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. base ) print *,'NG2'
	end
	recursive subroutine test3
	real    ref(1000)
	pointer(base,ref)
	integer*8 adr(1000)
	base = izero();
	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. base ) print *,'NG3'
	end
	subroutine test4
	real,pointer::ref(:)
	integer*8 adr(1000)
	allocate( ref(1000) )
	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG4'
	end
	recursive subroutine test5
	real,pointer::ref(:)
	integer*8 adr(1000)
	allocate( ref(1000) )
	do i=1,1000
	  adr(i) = loc(ref(1))
        end do
	if( adr(1) .ne. loc(ref(1)) ) print *,'NG5'
	end
	call test1
	call test1
	call test2
	call test3
	call test4
	call test5
	print *,' PASS '
	end
