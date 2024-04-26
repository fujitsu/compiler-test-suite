	integer*8 i
	real*16   r16
	real*8   r8

	r16=9223372036854775807Q0
	i = r16
	print *,i

	r16=9223372036854775808Q0
	i = r16
        if( i == 9223372036854775807 .or. 
     1   i == -9223372036854775808 ) then
	print *,-9223372036854775808
        else
        print *,"NG"
        endif
	end

