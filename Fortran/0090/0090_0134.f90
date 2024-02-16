program main

  common /com/v,u
  real(kind=4),dimension(1:10) :: v,u
  real(kind=4),parameter :: ans1=4.10000038_4,ans2=5.90000057_4
  real(kind=4),parameter :: ans3=7.89999914_4,ans4=2.44928598_4
  real(kind=4),parameter :: error=0.0000015_4
  logical(kind=1) ok

  call init
  v(1:10) = v(1:10) + u(1:10)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10:1) = v(1:10:1) + u(1:10:1)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:) = v(1:) + u(1:)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:10) = v(:10) + u(:10)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:) = v(:) + u(:)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10) = v(1:10) - u(1:10)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10:1) = v(1:10:1) - u(1:10:1)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:) = v(1:) - u(1:)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:10) = v(:10) - u(:10)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:) = v(:) - u(:)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10) = v(1:10) * u(1:10)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10:1) = v(1:10:1) * u(1:10:1)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:) = v(1:) * u(1:)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:10) = v(:10) * u(:10)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:) = v(:) * u(:)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10) = v(1:10) / ( u(1:10) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10:1) = v(1:10:1) / ( u(1:10:1) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:) = v(1:) / ( u(1:) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:10) = v(:10) / ( u(:10) + 1.0_4 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:) = v(:) / ( u(:) + 1.0_4 )

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
