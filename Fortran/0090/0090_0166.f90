program main

  common /com/v,w,t,s
  real(kind=16),dimension(1:10) :: v,w,t,s
  real(kind=16),dimension(1:10) :: p,q
  real(kind=16),parameter :: ans1=20.200000000000000000000000000000002_16
  real(kind=16),parameter :: ans2=-6.5999999999999999999999999999999997_16
  real(kind=16),parameter :: ans3= 7.7100000000000000000000000000000007_16
  real(kind=16),parameter :: ans4=11.518580542264752791068580542264754_16
  real(kind=16),parameter :: error= 0.000000000000000000000000000000006_16
  real(kind=16) res
  logical(kind=1) ok

  call init
  p(1:10) = v(1:10) + w(1:10)
  q(1:10) = t(1:10) + s(1:10)
  res = sum(p+q)
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) + w(1:10:1)
  q(1:10:1) = t(1:10:1) + s(1:10:1)
  res = sum(p+q)
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) + w(:)
  q(:) = t(:) + s(:)
  res = sum(p+q)
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) + w(1:)
  q(1:) = t(1:) + s(1:)
  res = sum(p+q)
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) + w(:10)
  q(:10) = t(:10) + s(:10)
  res = sum(p+q)
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10) = v(1:10) - w(1:10)
  q(1:10) = t(1:10) - s(1:10)
  res = sum(p+q)
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) - w(1:10:1)
  q(1:10:1) = t(1:10:1) - s(1:10:1)
  res = sum(p+q)
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) - w(:)
  q(:) = t(:) - s(:)
  res = sum(p+q)
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) - w(1:)
  q(1:) = t(1:) - s(1:)
  res = sum(p+q)
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) - w(:10)
  q(:10) = t(:10) - s(:10)
  res = sum(p+q)
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10) = v(1:10) * w(1:10)
  q(1:10) = t(1:10) * s(1:10)
  res = sum(p+q)
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) * w(1:10:1)
  q(1:10:1) = t(1:10:1) * s(1:10:1)
  res = sum(p+q)
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) * w(:)
  q(:) = t(:) * s(:)
  res = sum(p+q)
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) * w(1:)
  q(1:) = t(1:) * s(1:)
  res = sum(p+q)
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) * w(:10)
  q(:10) = t(:10) * s(:10)
  res = sum(p+q)
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10) = v(1:10) / w(1:10)
  q(1:10) = t(1:10) / s(1:10)
  res = sum(p+q)
  if ( abs(res - ans4) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) / w(1:10:1)
  q(1:10:1) = t(1:10:1) / s(1:10:1)
  res = sum(p+q)
  if ( abs(res - ans4) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) / w(:)
  q(:) = t(:) / s(:)
  res = sum(p+q)
  if ( abs(res - ans4) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) / w(1:)
  q(1:) = t(1:) / s(1:)
  res = sum(p+q)
  if ( abs(res - ans4) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) / w(:10)
  q(:10) = t(:10) / s(:10)
  res = sum(p+q)
  if ( abs(res - ans4) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

 100  continue


  if (ok) then
    print *,"OK"
  else
    print *,"NG : ",res
  endif

end program main

subroutine init()

  common /com/v,w,t,s
  real(kind=16),dimension(1:10) :: v,w,t,s

  v = (/-1.1_16,1.0_16,-0.1_16,-0.9_16,-1.2_16,2.1_16,1.9_16,0.1_16,1.0_16,0.0_16/)
  w = (/-1.0_16,1.2_16,0.5_16,-1.0_16,2.2_16,1.1_16,0.9_16,1.1_16,2.0_16,0.1_16/)
  t = (/-1.0_16,2.0_16,0.5_16,0.0_16,1.2_16,-2.0_16,-1.0_16,1.3_16,1.5_16,1.5_16/)
  s = (/-0.9_16,1.2_16,1.5_16,1.0_16,-2.0_16,1.9_16,0.8_16,0.9_16,1.0_16,0.9_16/)

end subroutine
