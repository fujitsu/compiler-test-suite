program main

  complex(kind=4),dimension(1:10) :: v,u,w
  real(kind=4),parameter :: ans1=12.3999996_4,ans2=-4.19999933_4
  real(kind=4),parameter :: ans3=-6.06999922_4,ans4=4.33295441_4
  real(kind=4),parameter :: error=2.0E-06
  real(kind=4) res
  logical(kind=1) ok

  u = (/(1.0_4,0.0_4),(1.0_4,-1.0_4),(1.2_4,1.4_4),(0.0_4,2.2_4),(0.4_4,-1.2_4),(0.4_4,0.2_4),(0.0_4,-4.0_4),(2.2_4,1.5_4),(0.0_4,-2.2_4),(3.0_4,-2.0_4)/)
  w = (/(0.0_4,0.5_4),(1.2_4,-1.2_4),(1.0_4,0.4_4),(0.1_4,2.1_4),(-0.4_4,-0.2_4),(1.4_4,-1.2_4),(2.0_4,1.0_4),(2.2_4,0.5_4),(0.3_4,-0.1_4),(0.0_4,-1.3_4)/)

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
