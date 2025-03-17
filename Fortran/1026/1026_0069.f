	module moda
	real,dimension(:),allocatable    :: iva
	integer int
	contains 
	  subroutine init()
	  end subroutine 
	  subroutine mod_sub()
	  end subroutine 
	end module
	use moda
	  allocate(iva(10))
	  iva=1
	  print *,iva
	call init()
	end
