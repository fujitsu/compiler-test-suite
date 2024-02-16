program main

  common /com/v,u
  real(kind=16),dimension(1:10) :: v,u
  real(kind=16),parameter :: ans1=1.5_16,ans2=4.1_16
  real(kind=16),parameter :: ans3=6.3_16,ans4=0.53499999999999999999999999999999993_16
  real(kind=16),parameter :: error=0.000000000000000000000000000000002_16
  logical(kind=1) ok

  call init
  v(1:9) = v(2:10) + u(2:10)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) + u(2:10:1)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) - u(2:10)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) - u(2:10:1)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) * u(2:10)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) * u(2:10:1)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) / ( u(2:10) + 1.0_16 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) / ( u(2:10:1) + 1.0_16 )

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
