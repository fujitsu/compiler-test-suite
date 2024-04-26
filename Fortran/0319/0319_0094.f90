	subroutine sub(i)
	if ( i.eq.0 ) goto 10
	if ( i ) 10,10,99
10	if (i.eq.2) goto 20
	if ( i.eq. 4 )  then
	  print *,'now soon end'
	  goto 99
	else
	  print *,'continue'
	endif
20	i=i+1
	if ( i.eq.3 ) goto 10
	goto 10
99	return
	end
        i=2
 	call sub(i)
 	print *,'test end'
        stop
	end
