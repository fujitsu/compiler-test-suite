#define PERMISSIBLE_ERROR_R4 (1.0E-6)
#define PERMISSIBLE_ERROR_R8 (1.0E-13)

#ifndef N
#define N (512)
#endif
#define DATA_TYPE real(kind=8)
#define TIME_STEP       1
#define EPSILON         0.000001
#define DT              0.01
#define G               1.0

subroutine tune_src(px, py, pz, m, vx, vy, vz)
  integer(kind=4)::t,i,j
  DATA_TYPE, dimension(N)::px, py, pz, m, vx, vy, vz
  DATA_TYPE, dimension(N)::dx, dy, dz, r2, r
  DATA_TYPE x_i, y_i, z_i, acc_x, acc_y, acc_z, a, ar

  do t = 1, TIME_STEP
    do i = 1, N
      acc_x = 0.0
      acc_y = 0.0
      acc_z = 0.0
      x_i = px(i)
      y_i = py(i)
      z_i = pz(i)
      do j = 1, N
        dx(j) = px(j) - x_i
        dy(j) = py(j) - y_i
        dz(j) = pz(j) - z_i
        r2(j) = (dx(j) * dx(j)) + (dy(j) * dy(j)) + (dz(j) * dz(j)) + EPSILON
      enddo
      do j = 1, N
        r(j) = 1.0 / sqrt(r2(j))
      enddo
      do j = 1, N
        a = G * m(j) / r2(j)
        ar = a * r(j)
        acc_x = acc_x + dx(j) * ar
        acc_y = acc_y + dy(j) * ar
        acc_z = acc_z + dz(j) * ar
      enddo
      vx(i) = vx(i) + acc_x * DT
      vy(i) = vy(i) + acc_y * DT
      vz(i) = vz(i) + acc_z * DT
    enddo
    do i = 1, N
      px(i) = px(i) + vx(i) * DT
      py(i) = py(i) + vy(i) * DT
      pz(i) = pz(i) + vz(i) * DT
    enddo
  enddo
end subroutine tune_src

subroutine test(px, py, pz, m, vx, vy, vz)
  integer(kind=4)::t,i
  DATA_TYPE, dimension(N)::px, py, pz, m, vx, vy, vz
  DATA_TYPE x_i, y_i, z_i, dx, dy, dz, r2, r, a, ar, acc_x, acc_y, acc_z

  do t = 1, TIME_STEP
    do i = 1, N
      acc_x = 0.0
      acc_y = 0.0
      acc_z = 0.0
      x_i = px(i)
      y_i = py(i)
      z_i = pz(i)
      do j = 1, N
        dx = px(j) - x_i
        dy = py(j) - y_i
        dz = pz(j) - z_i
        r2 = (dx * dx) + (dy * dy) + (dz * dz) + EPSILON
        a = G * m(j) / r2
        r = 1.0 / sqrt(r2)
        ar = a * r
        acc_x = acc_x + dx * ar
        acc_y = acc_y + dy * ar
        acc_z = acc_z + dz * ar
      enddo
      vx(i) = vx(i) + acc_x * DT
      vy(i) = vy(i) + acc_y * DT
      vz(i) = vz(i) + acc_z * DT
    enddo
    do i = 1, N
      px(i) = px(i) + vx(i) * DT
      py(i) = py(i) + vy(i) * DT
      pz(i) = pz(i) + vz(i) * DT
    enddo
  enddo
end subroutine test

subroutine init(px, py, pz, m, vx, vy, vz)
  integer(kind=4)::i
  DATA_TYPE, dimension(N)::px, py, pz, m, vx, vy, vz
  DATA_TYPE, r1, r2, r3, r4

  do i = 1, N
    call random_number(r1)
    px(i) = 6.0 * r1 - 3.0
    call random_number(r2)
    py(i) = 6.0 * r2 - 3.0
    call random_number(r3)
    pz(i) = 6.0 * r3 - 3.0
    call random_number(r4)
    m(i) = r4 + 1.0
    vx(i) = i
    vy(i) = i
    vz(i) = i
  enddo
end subroutine init

subroutine result_check(ans,res)
  integer(kind=4)::i
  DATA_TYPE,dimension(N)::ans,res
  do i=1,N
     if (.not.is_equal_r8(ans(i), res(i))) then
        print *, "NG:", i, ans(i), res(i)
        exit
     end if
  end do
  print *, "OK"
contains
  logical function is_equal_r4(a,b)
    real(kind=4)::a,b
    if ( a.eq.b ) then
       is_equal_r4 = .true.
    else if ( a.eq.0 ) then
       is_equal_r4 = ( b .lt. PERMISSIBLE_ERROR_R4)
    else if ( b.eq.0 ) then
       is_equal_r4 = ( a .lt. PERMISSIBLE_ERROR_R4)
    else
       is_equal_r4 = ( abs(a-b)/abs(a) .lt. PERMISSIBLE_ERROR_R4 )
    end if
  end function is_equal_r4

  logical function is_equal_r8(a,b)
    real(kind=8)::a,b
    if ( a.eq.b ) then
       is_equal_r8 = .true.
    else if ( a.eq.0 ) then
       is_equal_r8 = ( b .lt. PERMISSIBLE_ERROR_R8)
    else if ( b.eq.0 ) then
       is_equal_r8 = ( a .lt. PERMISSIBLE_ERROR_R8)
    else
       is_equal_r8 = ( abs(a-b)/abs(a) .lt. PERMISSIBLE_ERROR_R8 )
    end if
  end function is_equal_r8
end subroutine result_check

program main
  DATA_TYPE,dimension(N)::px1, py1, pz1, m1, vx1, vy1, vz1, px2, py2, pz2, m2, vx2, vy2, vz2
  call init(px1, py1, pz1, m1, vx1, vy1, vz1)
  px2 = px1
  py2 = py1
  pz2 = pz1
  m2 = m1
  vx2 = vx1
  vy2 = vy1
  vz2 = vz1
  call tune_src(px1, py1, pz1, m1, vx1, vy1, vz1)
  call test(px2, py2, pz2, m2, vx2, vy2, vz2)

  call result_check(px1, px2)
  call result_check(py1, py2)
  call result_check(pz1, pz2)
end program main
