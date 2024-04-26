	program main
        integer x 
        do x = 1 , 7
	  print *,x, '! = ', fact(x)
	end do
	contains
	recursive integer function fact(n) result(res)
	integer n
        if( n == 0 )then 
	  res = 1
        else 
  	  res = fact(n - 1) * n
        endif
        end function
        end
