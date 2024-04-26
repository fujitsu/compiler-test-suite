	block data
	common /com/i,j
	integer*2 i,j
	data i/2/,j/2/
	end
	program main
	common /com/i,j
	integer*2 i,j
	i=i**j
	if( i .eq. 4 ) then
	  print *,' OK '
        else
	  print *,' NG '
        endif
	end
