	program main
	integer*4,dimension(10)::i_dim
	integer*4,target ::local_i4
	integer*4        ::sun_local_i4
	integer*4,pointer::i4_p
	integer*4        ::suni4_p
	pointer (iaddr,suni4_p)
c
	local_i4=2
	i4_p=>local_i4
	sun_local_i4=2
	iaddr=loc(sun_local_i4)
c
	do i=1,10
	  i4_p=i4_p+suni4_p+i
	  i_dim(i)=i4_p
	enddo
c
	if ( i_dim(1).ne.0 ) then
	  call dummy_sub
	endif
	if ( i_dim(1).ne.100 ) then
	  call dummy_sub2
	endif
c
	print *,i4_p,suni4_p
	print *,i_dim(10)
	contains
	  subroutine dummy_sub2
	  return
	  end subroutine dummy_sub2
	end
c
	subroutine dummy_sub
	print *,'called sub'
	return
	end subroutine dummy_sub
