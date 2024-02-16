program main

  common /com/v,w,t,s
  complex(kind=4),dimension(1:10) :: v,w,t,s
  complex(kind=4),dimension(1:10) :: p,q
  real(kind=4),parameter :: ans1=-21.2000008_4
  real(kind=4),parameter :: ans2=7.59999943_4
  real(kind=4),parameter :: ans3=-30.3899994_4
  real(kind=4),parameter :: ans4=8.23941422_4
  real(kind=4),parameter :: error=0.000002_4
  real(kind=4) res
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
  complex(kind=4),dimension(1:10) :: v,w,t,s

  v = (/(-1.1_4,1.0_4),(-0.1_4,-0.9_4),(-1.2_4,2.1_4),(1.9_4,0.1_4),(1.0_4,0.0_4),(-1.0_4,1.2_4),(0.5_4,-1.0_4),(2.2_4,1.1_4),(0.9_4,1.1_4),(2.0_4,0.1_4)/)
  w = (/(-0.4_4,1.2_4),(-0.2_4,-0.8_4),(-1.9_4,1.2_4),(-2.0_4,-1.0_4),(1.2_4,1.0_4),(-0.8_4,0.2_4),(-0.8_4,1.0_4),(-2.0_4,0.5_4),(0.8_4,2.1_4),(-2.0_4,-1.4_4)/)
  t = (/(-1.0_4,2.0_4),(0.5_4,0.0_4),(1.2_4,-2.0_4),(-1.0_4,1.3_4),(1.5_4,1.5_4),(-0.9_4,1.2_4),(1.5_4,1.0_4),(-2.0_4,1.9_4),(0.8_4,0.9_4),(1.0_4,0.9_4)/)
  s = (/(2.4_4,2.2_4),(2.0_4,1.8_4),(0.9_4,-1.0_4),(-1.0_4,-1.0_4),(-1.0_4,2.5_4),(0.7_4,0.8_4),(1.8_4,1.2_4),(2.1_4,2.2_4),(-1.0_4,0.3_4),(0.8_4,1.0_4)/)

end subroutine
