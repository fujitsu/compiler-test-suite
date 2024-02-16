program main

  complex(kind=4),dimension(1:10) :: v,u
  real(kind=4) res
  real(kind=4),parameter :: ans=10.0_4
  real(kind=4),parameter :: error=0.000001_4
  logical*1 ok

  u = (/( 1.1_4, 1.2_4),( 0.0_4, 1.0_4),( 1.0_4,-1.0_4),(-1.1_4, 0.5_4),( 2.1_4, 1.1_4),( 0.9_4,-1.0_4),( 0.0_4, 3.0_4),( 1.7_4,-0.8_4),( 0.3_4, 0.0_4),(-1.0_4, 1.0_4)/)


  v(1:10) = u(1:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

 100  continue

  if (ok) then
    print *,"OK"
  else
    print *,"NG : ",res
  endif

end program main
