	program main
	integer*1,parameter::i1=1
	integer*2,parameter::i2=2
	integer*4,parameter::i4=3
	integer*8,parameter::i8=8
	real*4,parameter::r4=4
	real*8,parameter ::r8=8
	real*16,parameter::r16=16
	character*10,parameter::c='0123456789'
	complex*8,parameter::c8=(1,2)
	complex*16,parameter::c16=(3,4)
	complex*32,parameter::c32=(5,6)
	logical*4,parameter::l4=.true.
	logical*1,parameter::l1=.false.
	type TAG
	  integer i
	  integer j
	end type
	type(TAG),parameter::st = TAG(1,2)
	print *,i1,i2,i4,i8
	print *,r4,r8,r16
	print *,c
	print *,c8,c16,c32
	print *,l1,l4
	print *,st
	end
