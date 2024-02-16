program main

  real(kind=8),dimension(1:10) :: v,u,w
  real(kind=8),parameter :: ans1=4.100000000000000_8,ans2=5.900000000000001_8
  real(kind=8),parameter :: ans3=7.900000000000000_8,ans4=2.449285714285715_8
  real(kind=8),parameter :: error=0.00000000000001_8
  logical(kind=1) ok

  u = (/1.0_8,0.0_8,1.0_8,-1.0_8,1.2_8,1.4_8,0.0_8,2.2_8,0.4_8,-1.2_8/)
  w = (/0.4_8,0.2_8,0.0_8,-4.0_8,2.2_8,1.5_8,0.0_8,-2.2_8,3.0_8,-2.0_8/)


  v(1:10) = u(1:10) + w(1:10)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) + w(1:10:1)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) + w(1:)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) + w(:10)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) + w(:)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10) = u(1:10) - w(1:10)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) - w(1:10:1)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) - w(1:)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) - w(:10)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) - w(:)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10) = u(1:10) * w(1:10)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) * w(1:10:1)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) * w(1:)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) * w(:10)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) * w(:)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10) = u(1:10) / ( w(1:10) + 1.0_8 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) / ( w(1:10:1) + 1.0_8 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) / ( w(1:) + 1.0_8 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) / ( w(:10) + 1.0_8 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) / ( w(:) + 1.0_8 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

 100  continue

  if (ok) then
    print *,"OK"
  else
    print *,"NG : ",sum(v)
  endif

end program main
