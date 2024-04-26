	program main
        type TAG
	  logical  ll
	end type
	type(TAG) st
	real,dimension(:),pointer:: a
	allocate(a(10))
	a = (/1,2,3,4,5,6,7,8,9,10/)
	call sub(a)
	call sub(a,.false.)
	call sub2(a)
        st%ll = .false.
	call sub2(a,st)
	call sub3(a)
	call sub3(a, (/.false.,.false.,.false.,.false.,.false., &
                       .true.,.true.,.true.,.true.,.true./))
	contains
	  subroutine sub(a,l)
	  real,dimension(:),pointer:: a
	  logical,optional,intent(in)::l
	  print *,sum(a,mask=l)
	  end subroutine
	  subroutine sub2(a,s)
	  real,dimension(:),pointer:: a
	  type(TAG),optional,intent(in)::s
          if( present(s) ) then

	   if( maxval(a,mask=s%ll).ne.-huge(a)) print *,' ERROR(10) '
          else
	   if( maxval(a).ne.10 ) print *,' ERROR(11) '
          endif
	  end subroutine
	  subroutine sub3(a,l)
	  real,dimension(:),pointer:: a
	  logical,optional,intent(in),dimension(10)::l
	  print *,minval(a,mask=l)
	  end subroutine
	end program main
