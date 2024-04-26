	program main
	implicit none
	integer iresult,recurs3a
	iresult = recurs3a(10,0)
	if( iresult == 55 ) then
	  print *,'OK : ',iresult
        else
	  print *,'NG : ',iresult
        endif
	end
	integer recursive function recurs3a(pi,pj) result(res)
	implicit none
	integer pi,pj,i,j,recurs3b
	i=pi-1
	if( i >= 0 ) then
	  j=pj+1
	  res = recurs3b(i,i+j)
	else
	  res = pj
	endif
	end
	integer recursive function recurs3b(pi,pj) result(res)
	implicit none
	integer pi,pj,i,j,recurs3a
	i=pi-1
	if( i >= 0 ) then
	  j=pj+1
	  res = recurs3a( i, i+j )
        else
	  res = pj
	endif
	end
