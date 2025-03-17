	module moda
	real,dimension(:,:),allocatable    :: iva
	integer,public ,pointer        :: ipp
	integer,public ,target         :: ipt
	integer,private,pointer        :: ivp
	integer,private,target         :: ivt
	integer int
	contains 
	  subroutine init()
	  end subroutine 
	end module

	use moda
        allocate(iva(3,3))
	iva=1
	int = 2
	ipp => ipt
	ipt = 3
	print *,iva,int,ipp
	end

