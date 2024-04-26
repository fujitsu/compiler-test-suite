!
	subroutine f95(x,n)
	dimension x(n,n)
	forall( i=1:n, j=1:n ) x(i,j) = 1.0 / real(i+j-1)
	end
!
	subroutine f90(x,n)
	dimension x(n,n)
	x(1:n,1:n) = 1.0 /REAL(SPREAD((/(i,i=1,n)/),DIM=2,NCOPIES=n) &
	  + SPREAD((/(j,j=1,n)/),DIM=1,NCOPIES=n) - 1 )
	end
!
	dimension x(100,100)
	dimension y(100,100)
	call f95(x,100)
	call f90(y,100)
!
	if( all(abs((x-y)/x) < 0.000001) ) then
	  print *,' OK '
	else
	  print *,' NG '
	endif
	end
