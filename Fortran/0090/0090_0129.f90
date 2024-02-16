program main

  complex(kind=16),dimension(1:10) :: v,u,w
  real(kind=16),parameter :: ans1=12.700000000000000000000000000000002_16
  real(kind=16),parameter :: ans2=-4.3000000000000000000000000000000006_16
  real(kind=16),parameter :: ans3=-5.8100000000000000000000000000000004_16
  real(kind=16),parameter :: ans4= 4.4645975989682975898639591120173895_16
  real(kind=16),parameter :: error= 0.000000000000000000000000000000004_16
  real(kind=16) res
  logical(kind=1) ok

  u = (/(1.0_16,0.0_16),(1.0_16,-1.0_16),(1.2_16,1.4_16),(0.0_16,2.3_16),(0.4_16,-1.2_16),(0.4_16,0.2_16),(0.0_16,-4.0_16),(2.2_16,1.5_16),(0.0_16,-2.2_16),(3.0_16,-2.0_16)/)
  w = (/(0.0_16,0.5_16),(1.2_16,-1.2_16),(1.0_16,0.4_16),(0.3_16,2.1_16),(-0.4_16,-0.2_16),(1.4_16,-1.2_16),(2.0_16,1.0_16),(2.2_16,0.5_16),(0.3_16,-0.1_16),(0.0_16,-1.3_16)/)

  v(1:10) = u(1:10) + w(1:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans1 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:10:1) = u(1:10:1) + w(1:10:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans1 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:) = u(1:) + w(1:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans1 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:10) = u(:10) + w(:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans1 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:) = u(:) + w(:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans1 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:10) = u(1:10) - w(1:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans2 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:10:1) = u(1:10:1) - w(1:10:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans2 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:) = u(1:) - w(1:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans2 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:10) = u(:10) - w(:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans2 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:) = u(:) - w(:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans2 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:10) = u(1:10) * w(1:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans3 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:10:1) = u(1:10:1) * w(1:10:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans3 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:) = u(1:) * w(1:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans3 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:10) = u(:10) * w(:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans3 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:) = u(:) * w(:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans3 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:10) = u(1:10) / w(1:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans4 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:10:1) = u(1:10:1) / w(1:10:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans4 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:) = u(1:) / w(1:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans4 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:10) = u(:10) / w(:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans4 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:) = u(:) / w(:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans4 - res) <= error ) then
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
