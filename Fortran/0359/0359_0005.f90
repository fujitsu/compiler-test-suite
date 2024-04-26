  complex*16 c16(20),c16b(20)
  real*8 r8
  complex*8 c8(20),c8b(20)
  real*4 r4
  data c16/20*(1.,-1.)/
  data c8/20*(1.,-1.)/



	do i=1,20
	c16b(i) = cmplx(i,-i*2)
	c8b(i) =  cmplx(i,-i*2)
	enddo

  write(*,*) " TEST start"
  do i = 1, 10
    r4 =  1 + real(conjg( c8(i)))
    c8b(i) = c8b(i) + 2	
  end do
  write(6,*) c8b	
  if (r4 .ne. 2) then
     write(*,*) "NG1 --> ", r4
  endif
  do i = 1, 10
    r4 =  1 + imag(conjg( c8(i)))
    c8b(i) = c8b(i) + 2	
  end do
  write(6,*) c8b	
  if (r4 .ne. 2) then
     write(*,*) "NG2 --> ", r4
  endif

  do i = 1, 10
    r8 =  1 + real(conjg( c16(i)))
    c16b(i) = c16b(i) + 2	
  end do
  write(6,*) c16b	
  if (r8 .ne. 2) then
     write(*,*) "NG3 --> ", r8
  endif
  do i = 1, 10
    r8 =  1 + imag(conjg( c16(i)))
    c16b(i) = c16b(i) + 2	
  end do
  if (r8 .ne. 2) then
     write(*,*) "NG4 --> ", r8
  endif
  write(6,*) c16b	
  write(*,*) " TEST end"
  end

