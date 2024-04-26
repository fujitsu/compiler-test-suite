	subroutine test1
	integer*1::i1=100
	integer*2::i2=100
	integer*4::i4=100
	integer*8::i8=100
	print *,int(i1,kind=8),int(i1+1,kind=8)
	print *,int(i2,kind=8),int(i2+1,kind=8)
	print *,int(i4,kind=8),int(i4+1,kind=8)
	print *,int(i8,kind=1),int(i8+1,kind=1)
	print *,int(i8,kind=2),int(i8+1,kind=2)
	print *,int(i8,kind=4),int(i8+1,kind=4)
	end
	subroutine test2
	real*4::r1=100
	real*8::r2=100
	real*16::r4=100
	print *,real(r1,kind=16),real(r1+1,kind=16)
	print *,real(r2,kind=16),real(r2+1,kind=16)
	print *,real(r4,kind=4),real(r4+1,kind=4)
	print *,real(r4,kind=8),real(r4+1,kind=8)
	end
	call test1
	call test2
	end
