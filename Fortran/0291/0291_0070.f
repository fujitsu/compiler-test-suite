	type TAG2
	  integer j
	  integer k
	end type
	type TAG
	  integer i
	  type (TAG2) st
	  integer l
	end type
	type(TAG),parameter::p=TAG(1,TAG2(2,3),4)
	type(TAG)  :: t1
	type(TAG2) :: t2
	t1 = p
	t2 = p%st
	print *,t1,t2
	end
