      module a
      common /cmn1/ com1
      contains
	subroutine sub1()
	print *,com1
	com1=1
	end subroutine
      end
      module b
      common /cmn2/ com2
      contains
	subroutine sub2()
	end subroutine
      end

      program main
      use a
      use b
      com1=2
      call sub1()
      print *,com1
      stop
      end
