	program main
	call sub
	print *,' test passed '
	end
c
	subroutine sub
	implicit none
	type TAG
          sequence
	  integer i
	  integer dim(2)
        end type
c
	type (TAG),save:: st_save
	type (TAG),allocatable:: st_alloc(:)
c
	st_save%i = 1
	st_save%dim = 1
	call inc(st_save%i)
	call inc(st_save%dim(2))
	call inc(st_save%dim)
	if( st_save%i /= 2 )         print *,' NG 1-1 '
	if( st_save%dim(1) /= 2 )    print *,' NG 1-2 '
	if( st_save%dim(2) /= 2 )    print *,' NG 1-3 '
c
        allocate( st_alloc(2) )
	st_alloc(1)%i = 1
	st_alloc(1)%dim = 1
	call inc(st_alloc(1)%i)
	call inc(st_alloc(1)%dim(2))
	call inc(st_alloc(1)%dim)
	if( st_alloc(1)%i /= 2 )         print *,' NG 1-4 '
	if( st_alloc(1)%dim(1) /= 2 )    print *,' NG 1-5 '
	if( st_alloc(1)%dim(2) /= 2 )    print *,' NG 1-6 '
c
	call inc_st(st_save)
	if( st_save%i /= 3 )         print *,' NG 1-7 '
	if( st_save%dim(1) /= 3 )    print *,' NG 1-8 '
	if( st_save%dim(2) /= 3 )    print *,' NG 1-9 '
c
	call inc_st(st_alloc(1))
	if( st_alloc(1)%i /= 3 )         print *,' NG 1-a '
	if( st_alloc(1)%dim(1) /= 3 )    print *,' NG 1-b '
	if( st_alloc(1)%dim(2) /= 3 )    print *,' NG 1-c '
	end
c
	subroutine inc(i)
	integer i
	i=i+1
	end
c
	subroutine inc_st(st)
	type TAG
          sequence
	  integer i
	  integer dim(2)
        end type
	type (TAG) st
	st%i = st%i + 1
	st%dim = st%dim + 1
	end
