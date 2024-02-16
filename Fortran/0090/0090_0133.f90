program main

  common /com/v,u
  integer(kind=8),dimension(1:10) :: v,u
  integer(kind=8),parameter :: ans1=10_8,ans2=0_8
  integer(kind=8),parameter :: ans3=14_8,ans4=4_8
  logical(kind=1) ok

  call init
  v(1:10) = v(1:10) + u(1:10)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10:1) = v(1:10:1) + u(1:10:1)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:) = v(1:) + u(1:)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:10) = v(:10) + u(:10)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:) = v(:) + u(:)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  call init
  v(1:10) = v(1:10) - u(1:10)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10:1) = v(1:10:1) - u(1:10:1)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:) = v(1:) - u(1:)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:10) = v(:10) - u(:10)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:) = v(:) - u(:)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10) = v(1:10) * u(1:10)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10:1) = v(1:10:1) * u(1:10:1)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:) = v(1:) * u(1:)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:10) = v(:10) * u(:10)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:) = v(:) * u(:)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10) = v(1:10) / ( u(1:10) + 1_8 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:10:1) = v(1:10:1) / ( u(1:10:1) + 1_8 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:) = v(1:) / ( u(1:) + 1_8 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:10) = v(:10) / ( u(:10) + 1_8 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(:) = v(:) / ( u(:) + 1_8 )

  if ( ans4 == sum(v) ) then
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

subroutine init()
  common /com/v,u
  integer(kind=8),dimension(1:10) :: v,u

  v = (/1_8,0_8,1_8,-1_8,2_8,1_8,0_8,2_8,0_8,-1_8/)
  u = (/0_8,0_8,0_8,-2_8,2_8,2_8,0_8,2_8,3_8,-2_8/)

end subroutine
