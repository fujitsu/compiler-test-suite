	program main
	implicit none
	integer iresult,recurs2
	iresult = recurs2(10,0)
	if( iresult == 55 ) then
	  print *,'OK : ',iresult
        else
	  print *,'NG : ',iresult
	endif
	end
	integer recursive function recurs2(pi,pj) result(res)
	implicit none
	integer pi,pj,i,j,gen_int
	print *,pi,pj
	j=pj+gen_int(0)
	i=pi-1
	if(  i >= 0 ) then
	  j=j+1
	  res = recurs2( i , i + j )
        else
	  res = j
        endif
	end
	integer function gen_int(k)
	integer k
	gen_int = k
	end
