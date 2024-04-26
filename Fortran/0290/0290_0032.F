	program main
	call test1
	call test2
	end
!
	subroutine check(i,p,s)
	pointer( p, ii )
	pointer( s, jj )

	integer*8 jj

	if( s-4096 .eq. p ) then
	  print *,' OK ',i,'-1'
        else
	  print *,' NG ',i,'-1'
        endif
	if( jj .eq. s ) then
	  print *,' OK ',i,'-2'
        else
	  print *,' NG ',jj,s
        endif
	if( ii .eq. 1 ) then
	  print *,' OK ',i,'-3'
        else
	  print *,' NG ',i,'-3'
        endif
	end

	subroutine test1
	integer dim(4096/4+1)
	equivalence (dim(4096/4+1),j)

	integer*8 j

	j=loc(j)
	dim(1) = 1
	call check(1,loc(dim),j)
	end

	subroutine test2

	integer*8 j

	integer dim(4096/4+1)
	equivalence (dim(4096/4+1),j)
	data j/1/
	j=loc(j)
	dim(1) = 1
	call check(2,loc(dim),j)
	end
