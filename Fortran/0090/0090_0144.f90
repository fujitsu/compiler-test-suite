program main

  common /com/v,u
  real(kind=4),dimension(1:10) :: v,u
  real(kind=4),parameter :: ans1=1.50000048_4,ans2=4.10000038_4
  real(kind=4),parameter :: ans3=6.29999924_4,ans4=0.535000205_4
  real(kind=4),parameter :: error=0.000002_4
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
  v(1:9) = v(2:10) / ( u(2:10) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) / ( u(2:10:1) + 1.0_4 )

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
  real(kind=4),dimension(1:10) :: v,u

  v = (/1.0_4,0.0_4,1.0_4,-1.0_4,1.2_4,1.4_4,0.0_4,2.2_4,0.4_4,-1.2_4/)
  u = (/0.4_4,0.2_4,0.0_4,-4.0_4,2.2_4,1.5_4,0.0_4,-2.2_4,3.0_4,-2.0_4/)

end subroutine
