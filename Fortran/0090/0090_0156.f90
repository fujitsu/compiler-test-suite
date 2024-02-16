program main

  common /com/v,u
  real(kind=16),dimension(1:10) :: v,u
  real(kind=16),parameter :: ans1=8.3000000000000000000000000000000006_16
  real(kind=16),parameter :: ans2=6.1000000000000000000000000000000012_16
  real(kind=16),parameter :: ans3=6.5000000000000000000000000000000000_16
  real(kind=16),parameter :: ans4=2.2492857142857142857142857142857149_16
  real(kind=16),parameter :: error=0.000000000000000000000000000000002_16
  logical(kind=1) ok

  call init
  v(2:10) = v(1:9) + u(1:9)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) + u(1:9:1)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) - u(1:9)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) - u(1:9:1)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) * u(1:9)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) * u(1:9:1)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) / ( u(1:9) + 1.0_16 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) / ( u(1:9:1) + 1.0_16 )

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

subroutine init()

  common /com/v,u
  real(kind=16),dimension(1:10) :: v,u

  v = (/1.0_16,0.0_16,1.0_16,-1.0_16,1.2_16,1.4_16,0.0_16,2.2_16,0.4_16,-1.2_16/)
  u = (/0.4_16,0.2_16,0.0_16,-4.0_16,2.2_16,1.5_16,0.0_16,-2.2_16,3.0_16,-2.0_16/)

end subroutine
