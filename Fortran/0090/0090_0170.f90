program main

  common /com/v,w,t,s
  complex(kind=16),dimension(1:10) :: v,w,t,s
  complex(kind=16),dimension(1:10) :: p,q
  real(kind=16),parameter :: ans1=-21.2_16
  real(kind=16),parameter :: ans2=  7.6000000000000000000000000000000005_16
  real(kind=16),parameter :: ans3=-30.389999999999999999999999999999997_16
  real(kind=16),parameter :: ans4=  8.2394139946803329343881408140182933_16
  real(kind=16),parameter :: error=  0.00000000000000000000000000000001_16
  real(kind=16) res
  logical(kind=1) ok

  call init
  p(1:10) = v(1:10) + w(1:10)
  q(1:10) = t(1:10) + s(1:10)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) + w(1:10:1)
  q(1:10:1) = t(1:10:1) + s(1:10:1)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) + w(:)
  q(:) = t(:) + s(:)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) + w(1:)
  q(1:) = t(1:) + s(1:)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) + w(:10)
  q(:10) = t(:10) + s(:10)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans1) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10) = v(1:10) - w(1:10)
  q(1:10) = t(1:10) - s(1:10)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) - w(1:10:1)
  q(1:10:1) = t(1:10:1) - s(1:10:1)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) - w(:)
  q(:) = t(:) - s(:)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) - w(1:)
  q(1:) = t(1:) - s(1:)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) - w(:10)
  q(:10) = t(:10) - s(:10)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans2) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10) = v(1:10) * w(1:10)
  q(1:10) = t(1:10) * s(1:10)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) * w(1:10:1)
  q(1:10:1) = t(1:10:1) * s(1:10:1)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) * w(:)
  q(:) = t(:) * s(:)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) * w(1:)
  q(1:) = t(1:) * s(1:)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) * w(:10)
  q(:10) = t(:10) * s(:10)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans3) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10) = v(1:10) / w(1:10)
  q(1:10) = t(1:10) / s(1:10)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans4) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) / w(1:10:1)
  q(1:10:1) = t(1:10:1) / s(1:10:1)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans4) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) / w(:)
  q(:) = t(:) / s(:)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans4) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) / w(1:)
  q(1:) = t(1:) / s(1:)
  res = real(sum(p+q))-aimag(sum(p+q))
  if ( abs(res - ans4) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) / w(:10)
  q(:10) = t(:10) / s(:10)
  res = real(sum(p+q))-aimag(sum(p+q))
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
  complex(kind=16),dimension(1:10) :: v,w,t,s

  v = (/(-1.1_16,1.0_16),(-0.1_16,-0.9_16),(-1.2_16,2.1_16),(1.9_16,0.1_16),(1.0_16,0.0_16),(-1.0_16,1.2_16),(0.5_16,-1.0_16),(2.2_16,1.1_16),(0.9_16,1.1_16),(2.0_16,0.1_16)/)
  w = (/(-0.4_16,1.2_16),(-0.2_16,-0.8_16),(-1.9_16,1.2_16),(-2.0_16,-1.0_16),(1.2_16,1.0_16),(-0.8_16,0.2_16),(-0.8_16,1.0_16),(-2.0_16,0.5_16),(0.8_16,2.1_16),(-2.0_16,-1.4_16)/)
  t = (/(-1.0_16,2.0_16),(0.5_16,0.0_16),(1.2_16,-2.0_16),(-1.0_16,1.3_16),(1.5_16,1.5_16),(-0.9_16,1.2_16),(1.5_16,1.0_16),(-2.0_16,1.9_16),(0.8_16,0.9_16),(1.0_16,0.9_16)/)
  s = (/(2.4_16,2.2_16),(2.0_16,1.8_16),(0.9_16,-1.0_16),(-1.0_16,-1.0_16),(-1.0_16,2.5_16),(0.7_16,0.8_16),(1.8_16,1.2_16),(2.1_16,2.2_16),(-1.0_16,0.3_16),(0.8_16,1.0_16)/)

end subroutine
