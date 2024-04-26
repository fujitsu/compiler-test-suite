	program main
	integer*4,dimension(10)::i_dim
	integer*4,target ::local_i4
	integer*4        ::sun_local_i4
	integer*4,pointer::i4_p
	integer*4        ::suni4_p
	pointer (iaddr,suni4_p)
	local_i4=2
	sun_local_i4=2
	if ( local_i4.eq.2 ) then
	  i4_p=>local_i4
	  iaddr=loc(sun_local_i4)
	endif
	do i=1,10
	  i4_p=i4_p+suni4_p+i
	  i_dim(i)=i4_p
	enddo
        print *,I4_p
        print *,i_dim(10)
	end
