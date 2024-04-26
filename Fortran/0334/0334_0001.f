
	module moda
	integer,allocatable,dimension(:) :: amodule
        integer b(10)
	contains
	  subroutine sub
	    amodule = 2
	  end subroutine
	end module
	use moda
	integer,allocatable,dimension(:) :: amain
        integer kei
	allocate(amodule(10))
	allocate(amain(10))
	amodule = 1
	amain = 1
	call sub
	where ((amain.eq. 1).and.(amodule.ne. 2))
	  b = 1
        elsewhere
          b = 0
        endwhere

        kei = sum(b)

        if (kei == 0) then
           print *,'OK'
        else
           print *,'NG'
        endif

	end
