
	module moda
	integer,allocatable,dimension(:) :: a,b
	contains
	  subroutine sub
	    a = 2
	  end subroutine
	end module

	use moda
        integer kei
	allocate(a(10))
	allocate(b(10))
	a = 1
	call sub

        where (a.ne.2)
          b = 1
        elsewhere
          b = 0
        endwhere

        kei = sum(b)

        if (kei.ne.0) then
           print *,'NG'
        else
           print *,'OK'
        endif

	end
