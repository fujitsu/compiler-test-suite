  integer res(7)/7*0/,rres/100/
  res(1) = func_i8_cnt()
  res(2) = func_i8_i1()
  res(3) = func_i8_i2()
  res(4) = func_i8_i4()
  res(5) = func_i8_i8()
  res(6) = func_i8_r4()
  res(7) = func_i8_r8()
  do i=1,7
     if (res(i) .ne. rres) then
        write(6,*) i,res(i)
     endif
  enddo
  write(6,*) "ok"
end program

real function func_i8_cnt()
  integer*1  :: i8 = 0
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    i8 = i8 + 1.0
  enddo
  func_i8_cnt = i8
  return
end function func_i8_cnt

real function func_i8_i1()
  integer*1  :: i8 = 0
  integer*1  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    i8 = i8 + op3
  enddo
  func_i8_i1 = i8
  return
end function func_i8_i1

real function func_i8_i2()
  integer*1  :: i8 = 0
  integer*2  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    i8 = i8 + op3
  enddo
  func_i8_i2 = i8
  return
end function func_i8_i2

real function func_i8_i4()
  integer*1  :: i8 = 0
  integer*4  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    i8 = i8 + op3
  enddo
  func_i8_i4 = i8
  return
end function func_i8_i4

real function func_i8_i8()
  integer*1  :: i8 = 0
  integer*8  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    i8 = i8 + op3
  enddo
  func_i8_i8 = i8
  return
end function func_i8_i8

real function func_i8_r4()
  integer*1  :: i8 = 0
  real*4  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    i8 = i8 + op3
  enddo
  func_i8_r4 = i8
  return
end function func_i8_r4

real function func_i8_r8()
  integer*1  :: i8 = 0
  real*8  :: op3 = 1
!$OMP PARALLEL DO
  do i = 1, 100
!$OMP ATOMIC
    i8 = i8 + op3
  enddo
  func_i8_r8 = i8
  return
end function func_i8_r8
