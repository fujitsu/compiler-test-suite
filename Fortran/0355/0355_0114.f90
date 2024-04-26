  real*8 res(7)/7*0/,resr/100.0/
  res(1) = func_r8_cnt()
  res(2) = func_r8_i1()
  res(3) = func_r8_i2()
  res(4) = func_r8_i4()
  res(5) = func_r8_i8()
  res(6) = func_r8_r4()
  res(7) = func_r8_r8()
  do i=1,7
     if (res(i) .ne. resr) then
        write(6,*) i,res(i)
     endif
  enddo
  write(6,*) "ok"
end program

real function func_r8_cnt()
  real*8  :: r8 = 0
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r8 = r8 + 1.0
  enddo
  func_r8_cnt = r8
  return
end function func_r8_cnt

real function func_r8_i1()
  real*8  :: r8 = 0
  integer*1  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r8 = r8 + op3
  enddo
  func_r8_i1 = r8
  return
end function func_r8_i1

real function func_r8_i2()
  real*8  :: r8 = 0
  integer*2  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r8 = r8 + op3
  enddo
  func_r8_i2 = r8
  return
end function func_r8_i2

real function func_r8_i4()
  real*8  :: r8 = 0
  integer*4  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r8 = r8 + op3
  enddo
  func_r8_i4 = r8
  return
end function func_r8_i4

real function func_r8_i8()
  real*8  :: r8 = 0
  integer*8  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r8 = r8 + op3
  enddo
  func_r8_i8 = r8
  return
end function func_r8_i8

real function func_r8_r4()
  real*8  :: r8 = 0
  real*4  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r8 = r8 + op3
  enddo
  func_r8_r4 = r8
  return
end function func_r8_r4

real function func_r8_r8()
  real*8  :: r8 = 0
  real*8  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r8 = r8 + op3
  enddo
  func_r8_r8 = r8
  return
end function func_r8_r8
