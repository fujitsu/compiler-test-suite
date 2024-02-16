program main

  real(kind=4),dimension(1:10) :: v,u
  real(kind=4),parameter :: ans=5.0_4
  real(kind=4),parameter :: error=0.000001_4
  logical*1 ok

  u = (/1.1_4,0.0_4,1.0_4,-1.1_4,2.1_4,0.9_4,0.0_4,1.7_4,0.3_4,-1.0_4/)


  v(1:10) = u(1:10)

  if ( abs(ans - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1)

  if ( abs(ans - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:)

  if ( abs(ans - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10)

  if ( abs(ans - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:)

  if ( abs(ans - sum(v)) <= error ) then
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
