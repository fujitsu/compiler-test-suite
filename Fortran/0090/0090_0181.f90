program main

  integer(kind=1),dimension(1:-1) :: i1
  integer(kind=2),dimension(1:-1) :: i2
  integer(kind=4),dimension(1:-1) :: i4
  integer(kind=8),dimension(1:-1) :: i8
  real(kind=4),dimension(1:-1) :: r4
  real(kind=8),dimension(1:-1) :: r8
  real(kind=16),dimension(1:-1) :: r16
  complex(kind=4),dimension(1:-1) :: c8
  complex(kind=8),dimension(1:-1) :: c16
  complex(kind=16),dimension(1:-1) :: c32
  integer(kind=8)  ires
  real(kind=16)    rres
  complex(kind=16) cres
  real(kind=16)    res
  real(kind=16),parameter :: ans = 0._16

  i1  = 1_1
  i2  = 1_2
  i4  = 1_4
  i8  = 1_8
  r4  = real(i2,kind=4)
  r8  = real(i4,kind=8)
  r16 = real(i8,kind=16)
  c8  = cmplx(real(i1,kind=4),real(i2,kind=4))
  c16 = cmplx(real(i2,kind=8),real(i4,kind=8))
  c32 = cmplx(real(i4,kind=16),real(i8,kind=16))

  ires = sum(i1) + sum(i2) + sum(i4) + sum(i8)
  rres = sum(r4) + sum(r8) + sum(r16)
  cres = sum(c8) + sum(c16) + sum(c32)

  res  = ires + rres + real(cres) + aimag(cres)

  if ( res == ans ) then
    print *,"OK"
  else
    print *,"NG : ", res
  endif

end program main
