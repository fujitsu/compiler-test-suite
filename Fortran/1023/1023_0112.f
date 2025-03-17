      module modc
      contains
        subroutine sub
	character*(*) name
        return
        entry ent(name)
        end subroutine
        subroutine foo

        end subroutine
      end
      use modc
      call ent("abcdefg")
      end
