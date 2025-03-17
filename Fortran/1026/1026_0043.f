      module mo 
      integer int
      contains
	subroutine sub1()
	int = 1
	return
        entry ent()
	int = 2
	end subroutine
      end

      use mo
      call sub1()
      call ent()
      end
