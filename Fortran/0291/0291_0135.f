	program main
	implicit none
	integer,parameter:: max_m = 3
	integer,parameter:: max_n = 6
	integer m, n
        print *,'ack : start '
        do m = 0 , max_m 
	  do n = 0 , max_n 
	    print *,'Ack(', m, ', ', n, ') = ', ack(m, n)
          end do
        end do
	contains
        integer recursive function ack(x, y) result(res)
        integer x,y
        if (x == 0) then
  	  res = y + 1
        else if (y == 0 )then
          res = ack(x - 1, 1)
        else
          res = ack(x - 1, ack(x, y - 1))
	end if
        end function
        end
