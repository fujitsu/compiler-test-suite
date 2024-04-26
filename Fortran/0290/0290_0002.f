	program main
	call sub7(0)
	i=2
	call sub8(i)
	if( i .eq. 3 ) then 
	  print *,' - OK -'
        else 
	  print *,' - NG -'
        endif
	end
	subroutine sub1
	entry ent
	stop
	end
	subroutine sub2
	stop
	end
	subroutine sub3
	goto 10
10      stop
	end
	subroutine sub4
	goto 10
	stop
10      continue
	end
	subroutine sub6
	assign 20 to i
	goto 10
20	stop
10      continue
        goto i
	end
	subroutine sub7(i)
	if( i .eq. 1 ) then
	  stop
        endif
	end
	subroutine sub8(i)
	if( i .eq. 1 ) then
	  stop
        else
	  i=i+1
        endif
	end
