  real*4 res(7)/7*0/,resr/100.0/
  res(1) = func_r4_cnt()
  res(2) = func_r4_i1()
  res(3) = func_r4_i2()
  res(4) = func_r4_i4()
  res(5) = func_r4_i8()
  res(6) = func_r4_r4()
  res(7) = func_r4_r8()
  do i=1,7
     if (res(i) .ne. resr) then
        write(6,*) i,res(i)
     endif
  enddo
  write(6,*) "ok"
end program

real function func_r4_cnt()
  real*4  :: r4 = 0
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r4 = r4 + 1.0
  enddo
  func_r4_cnt = r4
  return
end function func_r4_cnt

real function func_r4_i1()
  real*4  :: r4 = 0
  integer*1  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r4 = r4 + op3
  enddo
  func_r4_i1 = r4
  return
end function func_r4_i1

real function func_r4_i2()
  real*4  :: r4 = 0
  integer*2  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r4 = r4 + op3
  enddo
  func_r4_i2 = r4
  return
end function func_r4_i2

real function func_r4_i4()
  real*4  :: r4 = 0
  integer*4  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r4 = r4 + op3
  enddo
  func_r4_i4 = r4
  return
end function func_r4_i4

real function func_r4_i8()
  real*4  :: r4 = 0
  integer*8  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r4 = r4 + op3
  enddo
  func_r4_i8 = r4
  return
end function func_r4_i8

real function func_r4_r4()
  real*4  :: r4 = 0
  real*4  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r4 = r4 + op3
  enddo
  func_r4_r4 = r4
  return
end function func_r4_r4

real function func_r4_r8()
  real*4  :: r4 = 0
  real*8  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    r4 = r4 + op3
  enddo
  func_r4_r8 = r4
  return
end function func_r4_r8
