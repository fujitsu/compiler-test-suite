  complex*16 c16(20)
  real*8 r8
  complex*8 c8(20)
  real*4 r4
  data c16/20*(1.,-1.)/
  data c8/20*(1.,-1.)/

  write(*,*) " TEST start"
  do i = 1, 10
    r4 =  1 + real(conjg( c8(i)))
  end do
  if (r4 .ne. 2) then
     write(*,*) "NG1 --> ", r4
  endif
  do i = 1, 10
    r4 =  1 + imag(conjg( c8(i)))
  end do
  if (r4 .ne. 2) then
     write(*,*) "NG2 --> ", r4
  endif

  do i = 1, 10
    r8 =  1 + real(conjg( c16(i)))
  end do
  if (r8 .ne. 2) then
     write(*,*) "NG3 --> ", r8
  endif
  do i = 1, 10
    r8 =  1 + imag(conjg( c16(i)))
  end do
  if (r8 .ne. 2) then
     write(*,*) "NG4 --> ", r8
  endif
  write(*,*) " TEST end"
  end

