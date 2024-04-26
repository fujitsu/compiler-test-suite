	program main
        integer x, n, L, m 
        read(5,*) m,L
        print *,m,L
        do n = 1 , m
    	    do x = 1 , L
	        print *,'fib(', x, ') = ', Fib(x)
            end do
        end do
	contains
        recursive function Fib(n) result(res)
	integer n,res
        if( n == 1) then
    	    res = 1
        else if( n == 2) then
	    res = 1
        else
    	    res = Fib(n - 1) + Fib(n - 2)
        endif
        end function
	end

