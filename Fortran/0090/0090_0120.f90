program main

  integer(kind=1),dimension(1:10) :: v,u,w
  integer(kind=1),parameter :: ans1=10_1,ans2=0_1
  integer(kind=1),parameter :: ans3=14_1,ans4=4_1
  logical(kind=1) ok

  u = (/1_1,0_1,1_1,-1_1,2_1,1_1,0_1,2_1,0_1,-1_1/)
  w = (/0_1,0_1,0_1,-2_1,2_1,2_1,0_1,2_1,3_1,-2_1/)


  v(1:10) = u(1:10) + w(1:10)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) + w(1:10:1)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) + w(1:)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) + w(:10)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) + w(:)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif



  v(1:10) = u(1:10) - w(1:10)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) - w(1:10:1)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) - w(1:)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) - w(:10)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) - w(:)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10) = u(1:10) * w(1:10)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) * w(1:10:1)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) * w(1:)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) * w(:10)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) * w(:)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10) = u(1:10) / ( w(1:10) + 1_1 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) / ( w(1:10:1) + 1_1 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) / ( w(1:) + 1_1 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) / ( w(:10) + 1_1 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) / ( w(:) + 1_1 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

 100  continue

  if (ok) then
    print *,"OK"
  else
    print *,"NG : ",v
  endif

end program main
