	program main
        type TAG
	  logical  ll
	end type
	type(TAG) st
	real,dimension(:),pointer:: a
	allocate(a(10))
	a = (/1,2,3,4,5,6,7,8,9,10/)
	call sub(a)
print *,'pass'
	contains
	  subroutine sub(a,l)
	  real,dimension(:),pointer:: a
	  logical,optional,intent(in)::l
	  if (abs(sum(a,mask=l)-55)>0.001)print *,201
	  end subroutine
	end program main
