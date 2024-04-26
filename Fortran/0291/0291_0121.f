	program main
	implicit none
	integer iresult,recurs4a
	iresult = recurs4a(10,0)
	if( iresult == 55 ) then
	  print *,'OK ',iresult
        else
	  print *,'NG ',iresult
        endif
	end
	recursive integer function recurs4a(pi,pj) result(res)
	implicit none
	integer pi,pj,i,j,gen_int,recurs4b
	print *,' recursive 4a ',pi,pj
	j = pj + gen_int(0)
	i = pi - 1
	if( i >= 0 ) then
	  j=j+1
	  res = recurs4b( i, i+j )
	else
	  res = j
	endif
	end
	recursive integer function recurs4b(pi,pj) result(res)
	implicit none
	integer pi,pj,i,j,gen_int,recurs4a
	print *,' recursive 4b ',pi,pj
	j = pj + gen_int(0)
	i = pi - 1
	if( i >= 0 ) then
	  j=j+1
	  res = recurs4a( i, i+j )
	else
	  res = j
	endif
	end
	recursive integer function gen_int(k)
	integer k
	gen_int = k
	end
