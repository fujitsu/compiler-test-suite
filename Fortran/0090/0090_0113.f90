program main

  integer(kind=8),dimension(1:10) :: v,u
  integer(kind=8),parameter :: ans=5_8
  logical(kind=1) ok

  u = (/1_8,0_8,1_8,-1_8,2_8,1_8,0_8,2_8,0_8,-1_8/)


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
