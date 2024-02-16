program main

  common /com/v,w,t,s
  real(kind=8),dimension(1:10) :: v,w,t,s
  real(kind=8),dimension(1:10) :: p,q
  real(kind=8),parameter :: ans1=20.20000000000000_8
  real(kind=8),parameter :: ans2=-6.600000000000000_8
  real(kind=8),parameter :: ans3= 7.710000000000001_8
  real(kind=8),parameter :: ans4=11.51858054226475_8
  real(kind=8),parameter :: error= 0.00000000000001_8
  real(kind=8) res
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
  real(kind=8),dimension(1:10) :: v,w,t,s

  v = (/-1.1_8,1.0_8,-0.1_8,-0.9_8,-1.2_8,2.1_8,1.9_8,0.1_8,1.0_8,0.0_8/)
  w = (/-1.0_8,1.2_8,0.5_8,-1.0_8,2.2_8,1.1_8,0.9_8,1.1_8,2.0_8,0.1_8/)
  t = (/-1.0_8,2.0_8,0.5_8,0.0_8,1.2_8,-2.0_8,-1.0_8,1.3_8,1.5_8,1.5_8/)
  s = (/-0.9_8,1.2_8,1.5_8,1.0_8,-2.0_8,1.9_8,0.8_8,0.9_8,1.0_8,0.9_8/)

end subroutine
