	subroutine sub(n)
	real,dimension(3,2) :: t  , f,r
	logical,dimension(3,2) :: m
	t=reshape( (/1,2,6,4,5,6/),(/3,2/) )
	f=reshape( (/0,7,3,4,2,8/),(/3,2/) )
	m=reshape( (/.true.,.false.,.false.,.false.,.true.,.true./),(/3,2/) )
	do i=1,n
 	  r(i,:) = merge( t(i,:),f(i,:), m(i,:) )
	end do
	print *,r
	end
	subroutine sub2(n,t)
	real,dimension(3,2) :: t  , f,r
	optional t
	logical,dimension(3,2) :: m
	if( .not.present(t) ) then
	  print *,'NULL'
	  return
	end if
	f=reshape( (/0,7,3,4,2,8/),(/3,2/) )
	m=reshape( (/.true.,.false.,.false.,.false.,.true.,.true./),(/3,2/) )
	do i=1,n
 	  r(i,:) = merge( t(i,:),f(i,:), m(i,:) )
	end do
	print *,r
	end
!
	interface 
	  subroutine sub2(n,t)
	  real,dimension(3,2),optional :: t
	  end subroutine 
	end interface
	real,dimension(3,2) :: t
	t=reshape( (/1,2,6,4,5,6/),(/3,2/) )
	call sub(3)
	call sub2(3,t)
	call sub2(3)
	end
