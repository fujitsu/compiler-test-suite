program main

  real(kind=16),dimension(1:10) :: v,u
  real(kind=16),parameter :: ans=5.0_16
  real(kind=16) :: s,error=1.0q-5
  logical*1 ok

  u = (/1.1_16,0.0_16,1.0_16,-1.1_16,2.1_16,0.9_16,0.0_16,1.7_16,0.3_16,-1.0_16/)


  v(1:10) = u(1:10)

  s = sum(v)
  if ( abs(ans-s).lt.error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1)

  s = sum(v)
  if ( abs(ans-s).lt.error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:)

  s = sum(v)
  if ( abs(ans-s).lt.error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10)

  s = sum(v)
  if ( abs(ans-s).lt.error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:)

  s = sum(v)
  if ( abs(ans-s).lt.error ) then
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
