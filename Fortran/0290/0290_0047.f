	print *,ifun(1)
	print *,ifun(2)
	end
	integer function ifun(p)
	integer p
	pointer (ip,ib)
	ip = loc(ifun)
	select case(p)
	case (1)
	  ifun = 1
        case (2)
	  ifun = 2
        end select
	ib = ib + 1
	end
