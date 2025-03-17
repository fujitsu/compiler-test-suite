      module mo
      integer int
      contains
        subroutine sub(para)
	integer int2
	para=8
	int2=8
	call foo()
        return
        entry ent
	contains
         subroutine foo()
	 print *,para
	 para=7
         end subroutine
        end subroutine
      end
      program main
      use mo
      para=9
      call sub(para)
      end
