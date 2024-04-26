	program main
	implicit none
	call test1
	call test2
	call test3
	call test4
	end
!
	subroutine test4
	implicit none
	character*10 rescharg0,rescharg1,c
	external     rescharg0,rescharg1
	if( rescharg0() .eq. '0123456789' ) then
	  print *,' CHECK 10 OK '
	else
	  print *,' CHECK 10 NG '
	endif
	c= '0123456789'
	if( rescharg1(c) .eq. '0123456789' ) then
	  print *,' CHECK 11 OK '
	else
	  print *,' CHECK 11 NG '
	endif
	call jmp5(rescharg0,rescharg1,c)
	end
!
	subroutine jmp5(x1,x2,c)
	implicit none
	character*10 x1,x2,c
	external     x1,x2
	if( x1() .eq. '0123456789' ) then
	  print *,' CHECK 10 OK '
	else
	  print *,' CHECK 10 NG '
	endif
	if( x2(c) .eq. '0123456789' ) then
	  print *,' CHECK 11 OK '
	else
	  print *,' CHECK 11 NG '
	endif
	end

	character*10 function rescharg0()
	implicit none
	rescharg0 = '0123456789'
	end

	character*10 function rescharg1(c)
	implicit none
	character*10 c
	rescharg1 = c
	end
!
	subroutine test3
	implicit none
	external test3b
	complex   c
	c=(2.0,3.0)
	call test3b(c)
	call jmp4(test3b,c)
	end
!
	subroutine jmp4(x1,c)
	implicit none
	complex   c
	call x1(c)
	end

	subroutine test3b(c)
	implicit none
	complex c
	if( c**2 .eq. (-5.0,12.0) ) then
	  print *,' CHECK 9 OK '
	else
	  print *,' CHECK 9 NG ',c**2
	endif
	end
!
	subroutine test2
	implicit none
	complex   resctarg0,resctarg1
	external  resctarg0,resctarg1
	if( resctarg0() .eq. (1.0,2.0) ) then
	  print *,' CHECK 7 OK '
	else
	  print *,' CHECK 7 NG '
	endif
	if( resctarg1(1) .eq. (2.0,2.0) ) then
	  print *,' CHECK 8 OK '
	else
	  print *,' CHECK 8 NG '
	endif
	call jmp3(resctarg0,resctarg1)
	end
!
	subroutine jmp3(x1,x2)
	implicit none
	complex x1,x2
	if( x1() .eq. (1.0,2.0) ) then
	  print *,' CHECK 7 OK '
	else
	  print *,' CHECK 7 NG '
	endif
	if( x2(1) .eq. (2.0,2.0) ) then
	  print *,' CHECK 8 OK '
	else
	  print *,' CHECK 8 NG '
	endif
	end

	complex function resctarg0()
	implicit none
	resctarg0 = (1.0,2.0)
	end

	complex function resctarg1(i)
	implicit none
	integer i
	resctarg1 = (1.0,2.0) + i
	end
!
	subroutine test1
	implicit none
        type TAG
	  integer i
	  integer j
        end type
	type (TAG) st,resstarg0,resstarg1
	logical*4 res1arg0,res1arg1
	external  res0arg0,res0arg1,res1arg0,res1arg1
	external  resstarg0,resstarg1
	call res0arg0
	call res0arg1(1)
	if( res1arg0() ) then
	  print *,' CHECK 3 OK '
	else
	  print *,' CHECK 3 NG '
	endif
	if( res1arg1(.true.) ) then
	  print *,' CHECK 4 OK '
	else
	  print *,' CHECK 4 NG '
	endif
	call jmp1(res0arg0,res0arg1,res1arg0,res1arg1)
	st = resstarg0()
	if( st%i .eq. 1 .and. st%j .eq. 2 ) then
	  print *,' CHECK 5 OK '
	else
	  print *,' CHECK 5 NG '
	endif
	st = resstarg1(1)
	if( st%i .eq. 2 .and. st%j .eq. 3 ) then
	  print *,' CHECK 6 OK '
	else
	  print *,' CHECK 6 NG '
	endif
	call jmp2(resstarg0,resstarg1)
	end
!
	subroutine jmp2(x1,x2)
	implicit none
        type TAG
	  integer i
	  integer j
        end type
	type (TAG) x1,x2,st
	st = x1()
	if( st%i .eq. 1 .and. st%j .eq. 2 ) then
	  print *,' CHECK 5 OK '
	else
	  print *,' CHECK 5 NG '
	endif
	st = x2(1)
	if( st%i .eq. 2 .and. st%j .eq. 3 ) then
	  print *,' CHECK 6 OK '
	else
	  print *,' CHECK 6 NG '
	endif
	end

	function resstarg0()
	implicit none
        type TAG
	  integer i
	  integer j
        end type
	type (TAG) resstarg0
	resstarg0%i = 1
	resstarg0%j = 2
	end

	function resstarg1(i)
	implicit none
	integer i
        type TAG
	  integer i
	  integer j
        end type
	type (TAG) resstarg1
	resstarg1%i = 1 + i
	resstarg1%j = 2 + i
	end
!
	subroutine jmp1(x1,x2,x3,x4)
	logical*4 x3,x4
	external  x1,x2,x3,x4
	call x1
	call x2(1)
	if( x3() ) then
	  print *,' CHECK 3 OK '
	else
	  print *,' CHECK 3 NG '
	endif
	if( x4(.true.) ) then
	  print *,' CHECK 4 OK '
	else
	  print *,' CHECK 4 NG '
	endif
	end
!
	subroutine res0arg0
	implicit none
	print *,' CHECK 1 OK '
	end
!
	subroutine res0arg1(i)
	implicit none
	integer i
	if( i == 1 ) then
	  print *,' CHECK 2 OK '
	else
	  print *,' CHECK 2 NG '
	endif
	end

	logical*4 function res1arg0()
	implicit none
	res1arg0 = .true.
	end

	logical*4 function res1arg1(l)
	implicit none
	logical*4 l
	res1arg1 = l
	end
