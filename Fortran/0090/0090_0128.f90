program main

  complex(kind=8),dimension(1:10) :: v,u,w
  real(kind=8),parameter :: ans1=12.40000000000000_8,ans2=-4.200000000000000_8
  real(kind=8),parameter :: ans3=-6.070000000000000_8,ans4=4.332953556736020_8
  real(kind=8),parameter :: error=0.00000000000001_8
  real(kind=8) res
  logical(kind=1) ok

  u = (/(1.0_8,0.0_8),(1.0_8,-1.0_8),(1.2_8,1.4_8),(0.0_8,2.2_8),(0.4_8,-1.2_8),(0.4_8,0.2_8),(0.0_8,-4.0_8),(2.2_8,1.5_8),(0.0_8,-2.2_8),(3.0_8,-2.0_8)/)
  w = (/(0.0_8,0.5_8),(1.2_8,-1.2_8),(1.0_8,0.4_8),(0.1_8,2.1_8),(-0.4_8,-0.2_8),(1.4_8,-1.2_8),(2.0_8,1.0_8),(2.2_8,0.5_8),(0.3_8,-0.1_8),(0.0_8,-1.3_8)/)

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
