program main

  integer(kind=2),dimension(1:10) :: v,u
  integer(kind=2),parameter :: ans=5_2
  logical(kind=1) ok

  u = (/1_2,0_2,1_2,-1_2,2_2,1_2,0_2,2_2,0_2,-1_2/)


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
