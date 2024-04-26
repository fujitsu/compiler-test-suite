	type TAG
	  complex*8  c8
	  complex*16 c16
	  complex*32 c32
	end type
	type (TAG),parameter::p = TAG((1.0,2.0),(3.0,4.0),(5.0,6.0))
	type (TAG) st
	st = p
	print *,st
	end
