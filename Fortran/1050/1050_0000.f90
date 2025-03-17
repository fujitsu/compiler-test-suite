program main
  call sub()
end

subroutine sub
  integer*1  :: i1
  integer*2  :: i2
  integer*4  :: i4
  integer*8  :: i8
  real*4     :: r4
  real*8     :: r8
  real*16    :: r16
  complex*8  :: c8
  complex*16 :: c16
  complex*32 :: c32
  integer :: i, n

  n = 100

  i1  = 0
  i2  = 0
  i4  = 0
  i8  = 0
  r4  = 0.0
  r8  = 0.0
  r16 = 0.0
  c8  = cmplx(0.0, 0.0)
  c16 = cmplx(0.0, 0.0)
  c32 = cmplx(0.0, 0.0)

  !$omp parallel do reduction(+:i1,i2,i4,i8)
  do i = 1, n
     i1 = i1 + 1
     i2 = i2 + 1
     i4 = i4 + 1
     i8 = i8 + 1
  end do
  !$omp end parallel do

  !$omp parallel do reduction(+:r4,r8,r16)
  do i = 1, n
     r4  = r4  + 1
     r8  = r8  + 1
     r16 = r16 + 1
  end do
  !$omp end parallel do

  !$omp parallel do reduction(+:c8,c16,c32)
  do i = 1, n
     c8  = c8  + 1
     c16 = c16 + 1
     c32 = c32 + 1
  end do
  !$omp end parallel do

  if (i1/=n .or. i2/=n .or. i4/=n .or. i8/=n) then
    print *, 'NG integer'
  endif
  if (r4/=n .or. r8/=n .or. r16/=n) then
    print *, 'NG real'
  endif
  if (c8/=n .or. c16/=n .or. c32/=n) then
    print *, 'NG complex'
  endif
  print *, 'pass'
end subroutine sub
