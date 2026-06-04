	module inter
	implicit none
	interface
	  subroutine sub1(p)
	  integer,dimension(:),pointer::p
	  end subroutine
	  subroutine sub2(p)
	  integer,dimension(:,:),pointer::p
	  end subroutine
	  subroutine sub3(p)
	  integer,dimension(:,:,:),pointer::p
	  end subroutine
	end interface
	end module

	block data
	integer itarget1,itarget2,itarget3
	common /com/itarget1(2),itarget2(2,2),itarget3(2,2,2)
	data itarget1/2*0/
	end 

	subroutine sub1(po)
	use inter
	integer,dimension(:),pointer::po
	integer i,itarget1,itarget2,itarget3
	common /com/itarget1(2),itarget2(2,2),itarget3(2,2,2)
	do i=1,2
	  if( po(i) /= itarget1(i)) then
	    print *,' TEST 1 NG '
	  endif
	enddo
	end
!
	subroutine sub2(po)
	use inter
	implicit none
	integer,dimension(:,:),pointer::po
	integer itarget1,itarget2,itarget3
	common /com/itarget1(2),itarget2(2,2),itarget3(2,2,2)
	target itarget2
	po => itarget2
	end
!
	subroutine sub3(po)
	use inter
	implicit none
	integer,dimension(:,:,:),pointer::po
	common /com/itarget1(2),itarget2(2,2),itarget3(2,2,2)
	integer itarget1,itarget2,itarget3
	target itarget3
	if( po(1,1,1) .ne. 3 ) then 
	  print *,' TEST 3 NG '
	endif
	po => itarget3
	end
!
	program main
	use inter
	integer i,j,k
	common /com/itarget1(2),itarget2(2,2),itarget3(2,2,2)
	integer itarget1,itarget2,itarget3
	target  itarget1
	integer,dimension(:),pointer::p1
	integer,dimension(:,:),pointer::p2
	integer,dimension(:,:,:),pointer::p3
	integer,dimension(10,10,10),target::local
	p1 => itarget1
	call sub1(p1)
	do i=1,2
	  do j=1,2
	    itarget2(i,j) = i*j
	  enddo
	enddo
	call sub2(p2)
	do i=1,2
	  do j=1,2
	    if( p2(i,j) /= itarget2(i,j) ) then
	      print *,' TEST 2 NG '
	    endif
	  enddo
	enddo
	p3 => local
	p3 = 3
	call sub3(p3)
	do i=1,2
	  do j=1,2
	    do k=1,2
	      if( p3(i,j,k) /= itarget3(i,j,k) ) then
	        print *,' TEST 3 NG '
	      endif
	    enddo
	  enddo
	enddo
	print *,' TEST PASS '
	end
