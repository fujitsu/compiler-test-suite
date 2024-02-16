program main

  real(kind=16),dimension(1:10) :: v,u,w
  real(kind=16),parameter :: ans1=4.0999999999999999999999999999999997_16
  real(kind=16),parameter :: ans2=5.9000000000000000000000000000000011_16
  real(kind=16),parameter :: ans3=7.9000000000000000000000000000000003_16
  real(kind=16),parameter :: ans4=2.4492857142857142857142857142857147_16
  real(kind=16),parameter :: error=0.000000000000000000000000000000002_16
  logical(kind=1) ok

  u = (/1.0_16,0.0_16,1.0_16,-1.0_16,1.2_16,1.4_16,0.0_16,2.2_16,0.4_16,-1.2_16/)
  w = (/0.4_16,0.2_16,0.0_16,-4.0_16,2.2_16,1.5_16,0.0_16,-2.2_16,3.0_16,-2.0_16/)

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


  v(1:10) = u(1:10) / ( w(1:10) + 1.0_16 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) / ( w(1:10:1) + 1.0_16 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(1:) = u(1:) / ( w(1:) + 1.0_16 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:10) = u(:10) / ( w(:10) + 1.0_16 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  v(:) = u(:) / ( w(:) + 1.0_16 )

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
