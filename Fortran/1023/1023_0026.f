	integer*1 i1
	integer*2 i2
	integer*4 i4
	real*4 r4
	real*8 r8
	complex*8 c8
	complex*16 c16
	logical*1 l1
	logical*4 l4
	character*1 ch1
	character*2 ch2
	character*4 ch4
	i1 = 1
	i2 = 2
	i4 = 4
	r4 = 4
	r8 = 8
	c8 = 8
	c16 = 16
	l1 = .true.
	l4 = .false.
	ch1 = '1'
	ch2 = '2'
	ch4 = '4'
	print *,i1
	print *,i2
	print *,i4
	print *,r4
	print *,r8
	print *,c8
	print *,c16
	print *,l1
	print *,l4
	print *,ch1
	print *,ch2
	print *,ch4
	call ent(i1,i2,i4,r4,r8,c8,c16,l1,l4,ch1,ch2,ch4)
	call sub(i1,i2,i4,r4,r8,c8,c16,l1,l4,ch1,ch2,ch4)
	stop
	end
	subroutine sub (p_i1,p_i2,p_i4,p_r4,p_r8,p_c8,p_c16,
     +	p_l1,p_l4,p_ch1,p_ch2,p_ch4)
	integer*1 p_i1
	integer*2 p_i2
	integer*4 p_i4
	real*4 p_r4
	real*8 p_r8
	complex*8 p_c8
	complex*16 p_c16
	logical*1 p_l1
	logical*4 p_l4
	character*1 p_ch1
	character*2 p_ch2
	character*4 p_ch4
	p_i1 = 1+1
	p_i2 = 2+1
	p_i4 = 4+1
	p_r4 = 4+1
	p_r8 = 8+1
	p_c8 = 8+1
	p_c16 = 16+1
	p_l1 = .true.
	p_l4 = .false.
	p_ch1 = '1'
	p_ch2 = '22'
	p_ch4 = '4444'
	entry ent (p_i1,p_i2,p_i4,p_r4,p_r8,p_c8,p_c16,
     +	p_l1,p_l4,p_ch1,p_ch2,p_ch4)
	p_i1 = 1+2
	p_i2 = 2+2
	p_i4 = 4+2
	p_r4 = 4+2
	p_r8 = 8+2
	p_c8 = 8+2
	p_c16 = 16+1
	p_l1 = .true.
	p_l4 = .false.
	p_ch1 = '*'
	p_ch2 = '**'
	p_ch4 = '****'
	end
