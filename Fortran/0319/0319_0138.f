	program main
	integer*4,dimension(10)::i_dim
	integer*4,target ::local_i4
	integer*4        ::sun_local_i4
	integer*4,pointer::i4_p
	integer*4        ::suni4_p,i_tmp,is_tmp
	pointer (iaddr,suni4_p)
	local_i4=2
	i4_p=>local_i4
	sun_local_i4=2
	iaddr=loc(sun_local_i4)
	do i=1,10
	  i4_p=i4_p+suni4_p+i
	  i_dim(i)=i4_p
	enddo
	if ( i_dim(10).ne.0 ) then
	  call dummy_sub
	endif
	i_tmp  = 0
	is_tmp = 0
	print *,i_tmp,is_tmp
	do i=1,10
	    i_tmp= i_tmp + i4_p
	    call internal_sub1
	    i_tmp= i_tmp + i4_p
	enddo
	do i=1,10
	    is_tmp=is_tmp + suni4_p
	    call internal_sub2
	    is_tmp=is_tmp + suni4_p
	enddo
	do i=1,10
	    i_tmp= i_tmp + i4_p
	    call internal_sub3
	    i_tmp= i_tmp + i4_p
	enddo
	do i=1,10
	    is_tmp=is_tmp + suni4_p
	    call internal_sub4
	    is_tmp=is_tmp + suni4_p
	enddo
	print *,i_tmp,is_tmp
	print *,i4_p,suni4_p
	print *,i_dim(10)
	contains
	  subroutine internal_sub1 ;	i4_p = 0
	  end subroutine internal_sub1
	  subroutine internal_sub2 ;	suni4_p = 0
	  end subroutine internal_sub2
	  subroutine internal_sub3 ;	local_i4 = 0
	  end subroutine internal_sub3
	  subroutine internal_sub4 ;	sun_local_i4 = 0
	  end subroutine internal_sub4
	end
	subroutine dummy_sub
	print *,'called sub'
	return
	end subroutine dummy_sub
