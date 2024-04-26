	block data
	common /com/i,j
	integer*2 i,j
	data i/x'7fff'/,j/x'8000'/
	end
	program main
	common /com/i,j
	integer * 2 i,j
	i = ior(i,j)
	if( i+1 .eq. 0 ) then 
	  print *,' pass '
        else
	  print *,' NG :',i+1
        endif
	end
