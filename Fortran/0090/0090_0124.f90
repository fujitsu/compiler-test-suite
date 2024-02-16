program main

  real(kind=4),dimension(1:10) :: v,u,w
  real(kind=4),parameter :: ans1=4.10000038_4,ans2=5.90000057_4
  real(kind=4),parameter :: ans3=7.89999914_4,ans4=2.44928598_4
  real(kind=4),parameter :: error=0.0000015_4
  logical(kind=1) ok

  u = (/1.0_4,0.0_4,1.0_4,-1.0_4,1.2_4,1.4_4,0.0_4,2.2_4,0.4_4,-1.2_4/)
  w = (/0.4_4,0.2_4,0.0_4,-4.0_4,2.2_4,1.5_4,0.0_4,-2.2_4,3.0_4,-2.0_4/)


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


  v(1:10) = u(1:10) / ( w(1:10) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) / ( w(1:10:1) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) / ( w(1:) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) / ( w(:10) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) / ( w(:) + 1.0_4 )

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
