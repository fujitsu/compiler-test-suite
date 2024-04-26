	subroutine fnd(i) 
	if( i .eq. 1 ) then
  	  assign 10 to n
        else
  	  assign 20 to n
        endif
	write(6,n)
10      format(1h ,'PASS')
20      format(1h ,'NG')
        end

        call fnd(1)
        end
        
