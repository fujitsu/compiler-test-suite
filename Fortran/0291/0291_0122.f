	recursive integer function suba(n) result(res)
	implicit none
	integer n
	if( n==1 ) then
	  res = 1
	else
	  res = n*suba(n-1)
	endif
	end
	recursive integer function subb(n) result(res)
	implicit none
	integer n
	if( n==1 ) then
	  res = 1
	else
	  res = subb(n-1)*n
	endif
	end
	program main
	implicit none
	integer  suba,subb
	integer  a
	a=suba(4)
	if( a == 24 ) then
	  print *,'OK ',a
	else
	  print *,'NG ',a
	endif
	a=subb(5)
	if( a == 120 ) then
	  print *,'OK ',a
	else
	  print *,'NG ',a
	endif
	end
