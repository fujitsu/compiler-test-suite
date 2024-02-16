program main

  common /com/v,u
  real(kind=4),dimension(1:10) :: v,u
  real(kind=4),parameter :: ans1=8.30000114_4,ans2=6.10000086_4
  real(kind=4),parameter :: ans3=6.49999905_4,ans4=2.24928570_4
  real(kind=4),parameter :: error=0.00001_4
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
  v(2:10) = v(1:9) / ( u(1:9) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) / ( u(1:9:1) + 1.0_4 )

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
