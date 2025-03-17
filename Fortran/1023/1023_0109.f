      module a
      contains
	subroutine sub1()
	end subroutine
      end
      module b
      integer int2
      contains
	subroutine sub2()
	int2=2
	end subroutine
      end

      program main
      use a
      use b
      int1=1
      int2=3
      stop
      end
