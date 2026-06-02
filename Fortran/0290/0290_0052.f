        call sub1()
	call sub2()
	print *,' test passed '
	end
	subroutine inc(i)
	implicit none
	integer,intent(inout)::i
	i=i+1
	end
	subroutine inc_com
	implicit none
        common/com/i
	integer i
	i=i+1
	end
	subroutine sub1
	implicit none
	integer   ii,i

	ii=0
	do i=1,10
	  call inc(ii)
	  ii = ii+1
        enddo
	if( ii /= 20 ) print *,' NG 1 '

	ii=0
	do i=1,10
	  ii = ii+1
	  ii = ii+1
        enddo
	if( ii /= 20 ) print *,' NG 2 '
	end
	subroutine sub2
	implicit none
	common /com/ii
	integer   ii,i
	ii=0

	do i=1,10
	  call inc_com
	  ii=ii+1
        enddo
	if( ii /= 20 ) print *,' NG 3 '
	ii=0

	do i=1,10
	  ii = ii+1
	  ii = ii+1
        enddo
	if( ii /= 20 ) print *,' NG 4 '
	end

