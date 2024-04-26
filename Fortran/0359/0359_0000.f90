  complex*16 c16(20)
  real*8 r8
  complex*8 c8(20)
  real*4 r4
  data c16/20*(1.,-1.)/
  data c8/20*(1.,-1.)/

  write(*,*) " TEST start  "
  do i = 1, 10
    r4 =  real(c8(i)  + 1 )
  end do
  if (r4 .ne. 2.0)  then
     write(*,*) "NG1 --> ", r4
  endif
  do i = 1, 10
    r4 =  imag(c8(i)  + 1 )
  end do
  if (r4 .ne. -1.0)  then
     write(*,*) "NG2 --> ", r4
  endif

  do i = 1, 10
    r8 =  real(c16(i)  + 1 )
  end do
  if (r8 .ne. 2.0)  then
     write(*,*) "NG3 --> ", r8
  endif
  do i = 1, 10
    r8 =  imag(c16(i)  + 1 )
  end do
  if (r8 .ne. -1.0)  then
     write(*,*) "NG4 --> ", r8
  endif
  write(*,*) " TEST end  "
  end

