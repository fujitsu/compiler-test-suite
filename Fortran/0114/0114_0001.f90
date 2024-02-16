        character name*13
	name = "  HELLO  "
        call sub
        print *,adjustr(name)//"Y@GOTEMBA"
        contains
        subroutine sub
           character line*132
           integer sep/5/
           line = name
           name = adjustl(line(:sep-1))
        end subroutine
        end

