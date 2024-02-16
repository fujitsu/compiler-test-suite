        character name*13
	call sub
	if( name.eq.'A' ) then
	 print *,"OK"
        else
	 print *,"NG",name
        endif
	contains
	subroutine sub
           character line*13
           integer sep /3/
	   line = ' ABC '
           name = adjustl(line(:sep-1))
	end subroutine 
	end

	
