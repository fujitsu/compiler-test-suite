program main

  real(kind=8),dimension(1:10) :: v,u
  real(kind=8),parameter :: ans=5.0_8
  logical*1 ok

  u = (/1.1_8,0.0_8,1.0_8,-1.1_8,2.1_8,0.9_8,0.0_8,1.7_8,0.3_8,-1.0_8/)


  v(1:10) = u(1:10)

  if ( ans == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1)

  if ( ans == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:)

  if ( ans == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10)

  if ( ans == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:)

  if ( ans == sum(v) ) then
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
