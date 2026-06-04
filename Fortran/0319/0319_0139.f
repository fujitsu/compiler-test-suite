	program main
	integer*4,target ::local_i4
	integer*4        ::sun_local_i4
	integer*4,pointer::i4_p
	integer*4        ::suni4_p,i_tmp
	pointer (iaddr,suni4_p)
	local_i4=2
	i4_p=>local_i4
	sun_local_i4=2
	iaddr=loc(sun_local_i4)
	do i=1,10
          i_tmp = i4_p + i4_p
	  call internal_sub1
          i_tmp = i4_p + i4_p
	enddo
	print *,i_tmp
	print *,i4_p

	do i=1,10
          i_tmp = suni4_p + suni4_p
	  call internal_sub2
          i_tmp = suni4_p + suni4_p
	enddo
	print *,i_tmp
	print *,suni4_p
	local_i4=2
	i4_p=>local_i4
	sun_local_i4=2
	iaddr=loc(sun_local_i4)
	do i=1,10
          i_tmp = local_i4 + local_i4
	  call internal_sub3
          i_tmp = local_i4 + local_i4
	enddo
	print *,i_tmp
	print *,local_i4
	do i=1,10
          i_tmp = sun_local_i4 + sun_local_i4
	  call internal_sub4
          i_tmp = sun_local_i4 + sun_local_i4
	enddo
	print *,i_tmp
	print *,sun_local_i4
	contains
	  subroutine internal_sub1 ;	i4_p = 0
	  print *,'internal_sub1'
	  end subroutine internal_sub1
	  subroutine internal_sub2 ;	suni4_p = 0
	  print *,'internal_sub2'
	  end subroutine internal_sub2
	  subroutine internal_sub3 ;	local_i4 = 0
	  print *,'internal_sub3'
	  end subroutine internal_sub3
	  subroutine internal_sub4 ;	sun_local_i4 = 0
	  print *,'internal_sub4'
	  end subroutine internal_sub4
	end
