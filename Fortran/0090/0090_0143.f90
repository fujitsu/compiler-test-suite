program main

  common /com/v,u
  integer(kind=8),dimension(1:10) :: v,u
  integer(kind=8),parameter :: ans1=8_8,ans2=-2_8
  integer(kind=8),parameter :: ans3=13_8,ans4=2_8
  logical(kind=1) ok

  call init
  v(1:9) = v(2:10) + u(2:10)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) + u(2:10:1)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) - u(2:10)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) - u(2:10:1)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) * u(2:10)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) * u(2:10:1)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) / ( u(2:10) + 1_8 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) / ( u(2:10:1) + 1_8 )

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
    print *,"NG : ",sum(v)
  endif

end program main

subroutine init()
  common /com/v,u
  integer(kind=8),dimension(1:10) :: v,u

  v = (/1_8,0_8,1_8,-1_8,2_8,1_8,0_8,2_8,0_8,-1_8/)
  u = (/0_8,0_8,0_8,-2_8,2_8,2_8,0_8,2_8,3_8,-2_8/)

end subroutine
