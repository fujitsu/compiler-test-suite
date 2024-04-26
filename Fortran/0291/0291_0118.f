	program main
	implicit none
	integer iresult,recurs1
	iresult = recurs1(10,0)
	if( iresult == 55 ) then
	  print *,' OK : ',iresult
        else
	  print *,' NG : ',iresult
        endif
	end
	integer recursive function recurs1(pi,pj) result(res)
	implicit none
	integer pi,pj,i,j
	i=pi-1
	if( i >= 0 ) then
	  j=pj+1
	  res =  recurs1( i, i + j )
        else
	  res = pj
        endif
	end
