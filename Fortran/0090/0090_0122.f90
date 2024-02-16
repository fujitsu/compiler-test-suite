program main

  integer(kind=4),dimension(1:10) :: v,u,w
  integer(kind=4),parameter :: ans1=10_4,ans2=0_4
  integer(kind=4),parameter :: ans3=14_4,ans4=4_4
  logical(kind=1) ok

  u = (/1_4,0_4,1_4,-1_4,2_4,1_4,0_4,2_4,0_4,-1_4/)
  w = (/0_4,0_4,0_4,-2_4,2_4,2_4,0_4,2_4,3_4,-2_4/)


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


  v(1:10) = u(1:10) / ( w(1:10) + 1_4 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1) / ( w(1:10:1) + 1_4 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:) / ( w(1:) + 1_4 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10) / ( w(:10) + 1_4 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:) / ( w(:) + 1_4 )

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
