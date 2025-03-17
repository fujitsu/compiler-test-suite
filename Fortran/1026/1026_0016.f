	module moda
	integer,private                :: iv=0
	integer,public                 :: ip
	integer,private,allocatable    :: iva(:)
	integer,public ,allocatable    :: ipa(:)
	integer,private,pointer        :: ivp
	integer,public ,pointer        :: ipp
	integer,private,target         :: ivt
	integer,public ,target         :: ipt
	contains 
	  subroutine init()
          ipt=0
	  ivp => ivt
	  ipp => ipt
	  allocate(iva(10))
	  allocate(ipa(10))
	  iva=1
	  ipa=1
	  end subroutine 
	  subroutine mod_sub()
	  ip  = ip + 1
	  ipa = ipa + 1
  	  ipp = ipp + 1
	  iv  = iv + 1
	  iva = iva + 1
	  ivp = ivp + 1
	  end subroutine 
	end module
        subroutine ext
	use moda
	ip = ip + 1
	ipa = ipa + 1
	ipp = ipp + 1
	print *,ip,ipa,ipp
	call mod_sub()
	end subroutine ext
        subroutine test1
	use moda
	print *,' TEST 1 '
	ip = 1
	call ext() 
	if( ip /= 3 ) print *,' NG 1 '
	ip = 1
	call mod_sub()             
	if( ip /= 2 ) print *,' NG 2 '
	ipa(1) = 1
	call ext()           
	if( ipa(1) /= 3 ) print *,' NG 3 '
	ipa(1) = 1
	call mod_sub()             
	if( ipa(1) /= 2 ) print *,' NG 4 '
	ipp = 1
	call ext()           
	if( ipp /= 3 ) print *,' NG 5 '
	ipp = 1
	call mod_sub()             
	if( ipp /= 2 ) print *,' NG 6 '
	ipt = 1
	call ext()           
	if( ipt /= 3 ) print *,' NG 7 '
	ipt = 1
	call mod_sub()             
	if( ipt /= 2 ) print *,' NG 8 '
	end
	block data
	common/com/com_i
	data com_i/1/
	end
        subroutine test2
	use moda
	common/com/com_i
	print *,' TEST 2 '
	i = com_i
	ip = i
	call ext() 
	if( ip /= 3 ) print *,' NG 1 '
	ip = i
	call mod_sub()             
	if( ip /= 2 ) print *,' NG 2 '
	ipa(1) = i
	call ext()           
	if( ipa(1) /= 3 ) print *,' NG 3 '
	ipa(1) = i
	call mod_sub()             
	if( ipa(1) /= 2 ) print *,' NG 4 '
	ipp = i
	call ext()           
	if( ipp /= 3 ) print *,' NG 5 '
	ipp = i
	call mod_sub()             
	if( ipp /= 2 ) print *,' NG 6 '
	ipt = i
	call ext()           
	if( ipt /= 3 ) print *,' NG 7 '
	ipt = i
	call mod_sub()             
	if( ipt /= 2 ) print *,' NG 8 '
	end
	program main
	use moda
	call init()
	call test1()
	call test2()
	print *,' TEST PASSED '
	end
